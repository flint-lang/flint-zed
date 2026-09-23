;=============================
; Comments
;=============================

(line_comment) @comment
(block_comment) @comment

;=============================
; Variables
;=============================

(identifier) @variable

(parameter
  name: (identifier) @variable.parameter)

(switch_rule
  binding: (_) @variable)

(catch_expression
  error: (identifier) @variable)

;=============================
; Fields / members
;=============================

(member_expression
  property: (identifier) @property)

(field_initializer
  name: (_) @property)

;=============================
; Types
;=============================

(type_identifier) @type

((type_identifier) @constant
  (#match? @constant "^[A-Z][A-Z0-9_]*$"))

[
  (integral_type)
  (floating_point_type)
  (bool_type)
  (bool8_type)
  (void_type)
  (str_type)
  (anyerror_type)
  (opaque_type)
  (bp_type)
  (imperfect_type)
  (fn_type)
  (optional_type)
] @type

(instantiated_data_type) @type
(instantiated_variant_type) @type

;=============================
; Functions
;=============================

(function_declaration
  name: (_) @function)

(extern_declaration
  name: (_) @function)

(function_signature
  name: (_) @function)

(call_expression
  name: (identifier) @function)

; uppercase calls, e.g. `SomeFunction(...)`
(call_expression
  name: (type_identifier) @function)

; generic calls: `append[i32](...)`
(call_expression
  name: (subscript_expression
    object: (identifier) @function))

(call_expression
  name: (member_expression
    property: (identifier) @function))

; uppercase member calls, e.g. `rl.SomeCFunction(...)`
(call_expression
  name: (member_expression
    property: (type_identifier) @function))

(function_reference
  function: (identifier) @function)

;=============================
; Literals
;=============================

(character_literal) @string
(escape_sequence) @string.escape
(string_literal) @string
(interpolated_string_literal) @string
(string_interpolation) @embedded

(integer_literal) @number
(float_literal) @number

(true) @boolean
(false) @boolean
(none) @constant
(null) @constant
(default_val) @constant

(tuple_index) @string.special

;=============================
; Keywords
;=============================

[
  "def" "data" "func" "interface" "object" "enum" "variant" "error"
  "test" "extern" "export" "opaque" "type"
] @keyword

[
  "use" "as" "implements" "requires"
] @keyword.import

[
  "const" "mut" "shared" "persistent"
] @keyword.storage

[
  "if" "else" "else if" "switch"
] @keyword.conditional

[
  "for" "in" "while" "do"
] @keyword.repeat

[
  "return" "break" "continue"
] @keyword.return

[
  "throw" "catch"
] @keyword.exception

[
  "spawn" "sync" "lock"
] @keyword

;=============================
; Operators
;=============================

[
  "or" "and" "not"
  "==" "!=" ">=" "<=" ">" "<"
  "-" "+" "/" "*" "%" "**"
  "++" "--"
  "??" ".." ":=" "=" "+=" "-=" "*=" "/="
  "->" "?." "::" "!" "&"
] @operator

;=============================
; Punctuation
;=============================

[
  ";"
  ":"
  "."
  ","
] @punctuation.delimiter

[
  "{"
  "}"
] @punctuation.bracket

[
  "["
  "]"
] @punctuation.bracket

[
  "("
  ")"
] @punctuation.bracket

;=============================
; Annotations
;=============================

(annotation) @comment

(annotation
  name: (identifier) @comment)