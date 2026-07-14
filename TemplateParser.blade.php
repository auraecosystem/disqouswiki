use MediaWiki\Html\TemplateParser;

$templateParser = new TemplateParser(
    __DIR__ . '/../resources/templates'
);

$html = $templateParser->processTemplate(
    'Web4Documentation',
    [
        'title' => 'Web4 Documentation Portal',
        'description' => 'Official documentation for the Web4 Ecosystem',
        'version' => '1.0.0',
        'author' => 'Aura Ecosystem',
        'status' => 'Stable',
        'searchEnabled' => true,
        'projects' => [
            [
                'name' => 'Web4',
                'url' => '/wiki/Web4',
                'summary' => 'Core Web4 platform'
            ],
            [
                'name' => 'QubuHub',
                'url' => '/wiki/QubuHub',
                'summary' => 'AI development platform'
            ]
        ],
        'documentation' => [
            [
                'title' => 'Getting Started',
                'url' => '/wiki/Getting_Started'
            ],
            [
                'title' => 'API Reference',
                'url' => '/wiki/API_Reference'
            ]
        ],
        'features' => [
            'Search',
            'Versioning',
            'REST API',
            'PDF Export',
            'Syntax Highlighting'
        ]
    ]
);
