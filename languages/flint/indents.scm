; Continuation lines inside brackets / array ranks
(_
  "["
  "]" @end) @indent

(_
  "{"
  "}" @end) @indent

(_
  "("
  ")" @end) @indent

; Compound statement blocks, used as anchors for decrease_indent_patterns
(function_declaration) @start.def
(test_declaration) @start.test
(if_statement) @start.if
(for_statement) @start.for
(enhanced_for_statement) @start.for
(while_statement) @start.while
(do_statement) @start.do
(switch_expression) @start.switch
(enum_declaration) @start.enum
(catch_statement) @start.catch