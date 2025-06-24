
val string_of_type : Ast.type_t -> string
val string_of_label : Ast.label_t -> string
(*val string_of_cond : Ast.cond_t -> string*)
val string_of_operand : Ast.operand_t -> string
val string_of_offset : Ast.offset_t -> string
val string_of_loc : Ast.loc_t -> string
val string_of_cond : Ast.cond_t -> string
val string_of_instr : Ast.instr_t -> string
val print_basic_block : Ast.basic_block_t -> unit
val print_function : Ast.function_t -> unit

