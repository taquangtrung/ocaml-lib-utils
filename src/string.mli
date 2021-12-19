(********************************************************************
 * This file is part of ocaml-extcore, an extended library of the
 * OCaml Core standard library with additionally useful functions.
 *
 * Copyright (c) 2021 Ta Quang Trung.
 ********************************************************************)

module String : sig
  val not_empty : string -> bool
  val is_infix : infix:string -> string -> bool
  val strip_newline : string -> string
  val prefix_if_not_empty : string -> prefix:string -> string
  val suffix_if_not_empty : string -> suffix:string -> string

  val surround_if_not_empty
    :  string ->
    prefix:string ->
    suffix:string ->
    string

  val replace_if_empty : string -> replacer:string -> string
  val count_indent : string -> int
  val mk_indent : int -> string
  val indent : ?skipfirst:bool -> int -> string -> string
  val hindent : ?skipfirst:bool -> int -> ('a -> string) -> 'a -> string
  val align_line : string -> string -> string
  val halign_line : string -> ('a -> string) -> 'a -> string
  val prefix_line : prefix:string -> string -> string

  include module type of struct
    include Core.String
  end
end
