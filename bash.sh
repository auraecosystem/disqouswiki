$ cd ~/public_html
$ php -S localhost:8000
$ php -S 0.0.0.0:8000
$ php -S localhost:8000 router.php

analyzer --cfg CharaActor
analyzer --callgraph Renderer
analyzer --generate cpp
analyzer --generate rust
analyzer --generate zig
analyzer --uml
analyzer --graph
analyzer --json
analyzer --diff old.exe new.exe
analyzer --plugins
analyzer --ai
analyzer --report html
analyzer --report pdf
analyzer --sdk
