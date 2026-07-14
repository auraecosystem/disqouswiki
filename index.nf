@title Web4 Documentation Portal
@description Official documentation for the Web4 Ecosystem
@version 1.0.0
@author Aura Ecosystem
@theme web4
@toc true
@search true
 
#  Welcome

Welcome to the Web4 documentation portal.

## Projects

- [[Web4]]
- [[QubuHub]]
- [[Aura Ecosystem]]
- [[Fadaka Blockchain]]
- [[GPT-5 Mini]]
- [[RODAAI]]

## Documentation

- [[Getting Started]]
- [[Installation]]
- [[Architecture]]
- [[API Reference]]

!!! note
    This documentation is automatically indexed by Wikixedia Search.

## Example

```python
print("Hello, Web4!")

:::mermaid
graph TD
User –> Wikixedia
Wikixedia –> Parser
Parser –> HTML
Parser –> PDF
Parser –> API
:::

The corresponding architecture might look like:

```text
                index.nf
                    │
          ┌─────────▼─────────┐
          │   NF Lexer         │
          └─────────┬─────────┘
                    │
          ┌─────────▼─────────┐
          │   NF Parser        │
          └─────────┬─────────┘
                    │
          ┌─────────▼─────────┐
          │  Abstract Syntax   │
          │      Tree (AST)    │
          └─────────┬─────────┘
                    │
      ┌─────────────┼─────────────┐
      ▼             ▼             ▼
   HTML         Markdown        PDF
      ▼             ▼             ▼
  Static Site    GitHub Docs    Print
