((text) @injection.content
    (#set! injection.language "html")
    (#set! injection.combined))
((php_only) @injection.content
    (#set! injection.language "php")
    (#set! injection.combined))
((parameter) @injection.content
    (#set! injection.language php))
