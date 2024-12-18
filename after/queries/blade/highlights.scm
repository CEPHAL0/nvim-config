(directive) @function
(directive_start) @function
(directive_end) @function
(comment) @comment
((parameter) @include (#set! "priority" 110)) 
((php_only) @include (#set! "priority" 110)) 
((bracket_start) @function (#set! "priority" 120)) 
((bracket_end) @function (#set! "priority" 120)) 
(keyword) @function


((directive) @directive
  (#set! injection.language blade)
  (#set! injection.combined)
  (#set! injection.indent 1))  ; Ensure indentation is applied here if possible

