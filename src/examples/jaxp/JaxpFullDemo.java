
/* file src/examples/jaxp/JaxpFullDemo.java */

package examples.jaxp;

import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.parsers.*;
import javax.xml.stream.*;
import javax.xml.validation.*;
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

import org.w3c.dom.Document;
import org.xml.sax.helpers.DefaultHandler;
import javax.xml.XMLConstants;

public class JaxpFullDemo {
    public static void main(String[] args) throws Exception {
        // 1. DOM Parsing
        DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder domBuilder = domFactory.newDocumentBuilder();
        Document domDoc = domBuilder.parse(new File("input.xml"));
        System.out.println("DOM Root Element: " + domDoc.getDocumentElement().getNodeName());

        // 2. SAX Parsing
        SAXParserFactory saxFactory = SAXParserFactory.newInstance();
        SAXParser saxParser = saxFactory.newSAXParser();
        saxParser.parse(new File("input.xml"), new DefaultHandler() {
            @Override
            public void startElement(String uri, String localName, String qName, org.xml.sax.Attributes attributes) {
                System.out.println("SAX Element: " + qName);
            }
        });

        // 3. StAX Parsing
        XMLInputFactory staxFactory = XMLInputFactory.newInstance();
        XMLStreamReader reader = staxFactory.createXMLStreamReader(new java.io.FileInputStream("input.xml"));
        while (reader.hasNext()) {
            int event = reader.next();
            if (event == XMLStreamReader.START_ELEMENT) {
                System.out.println("StAX Element: " + reader.getLocalName());
            }
        }

        // 4. Validation
        SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
        Schema schema = schemaFactory.newSchema(new File("schema.xsd"));
        Validator validator = schema.newValidator();
        validator.validate(new StreamSource(new File("input.xml")));
        System.out.println("Validation passed!");

        // 5. Transformation (TrAX)
        String xsltResource = """
            <xsl:stylesheet version='2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
                <xsl:output method='xml' indent='no'/>
                <xsl:template match='/'>
                    <reRoot><reNode><xsl:value-of select='/root/node/@val' /> world</reNode></reRoot>
                </xsl:template>
            </xsl:stylesheet>
        """;

        String xmlSourceResource = "<root><node val='hello'/></root>";

        StringWriter xmlResultResource = new StringWriter();
        Transformer transformer = TransformerFactory.newInstance().newTransformer(
            new StreamSource(new StringReader(xsltResource))
        );
        transformer.transform(new StreamSource(new StringReader(xmlSourceResource)),
                              new StreamResult(xmlResultResource));

        System.out.println("Transformation result:");
        System.out.println(xmlResultResource.getBuffer().toString());
    }
}
