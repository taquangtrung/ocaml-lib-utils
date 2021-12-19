(********************************************************************
 * This file is part of ocaml-extcore, an extended library of the
 * OCaml Core standard library with additionally useful functions.
 *
 * Copyright (c) 2021 Ta Quang Trung.
 ********************************************************************)

module Sys : sig
  val track_runtime : (unit -> 'a) -> 'a * float
  val report_runtime : ?task:string -> (unit -> 'a) -> 'a
  val record_runtime : (unit -> 'a) -> float ref -> 'a
  val is_os_unix : unit -> bool
  val remove_dir : string -> unit
  val remove_file : string -> unit
  val make_dir : string -> unit

  include module type of struct
    include Core.Sys
  end
end
