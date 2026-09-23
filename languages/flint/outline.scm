;=============================
; Functions
;=============================

(function_declaration
  name: (_) @name) @item

; Signatures inside `interface` declarations
(function_signature
  name: (_) @name) @item

;=============================
; Type declarations
;=============================

(data_declaration
  name: (type_identifier) @name) @item

(enum_declaration
  name: (type_identifier) @name) @item

(variant_declaration
  name: (type_identifier) @name) @item

(interface_declaration
  name: (type_identifier) @name) @item

(object_declaration
  name: (type_identifier) @name) @item

(error_declaration
  name: (type_identifier) @name) @item

;=============================
; Function groups (`func Name:`)
;=============================

(function_group_declaration
  name: (type_identifier) @name) @item

;=============================
; Tests
;=============================

(test_declaration
  name: (string_literal (plain_string_fragment) @name)) @item

(test_declaration
  name: (interpolated_string_literal (string_fragment) @name)) @item