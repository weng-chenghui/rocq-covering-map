(* Level2.v -- 2-dimensional CW discretization (cells / faces) *)

From Coq Require Import Utf8_core.
From mathcomp Require Import ssreflect ssrfun ssrbool eqtype seq.
From Level1 Require Export Level1.

Module Level2.

(** 2-cells attached to the 1-skeleton to form surfaces. *)

Record cell2 := {
  boundary : seq Level1.edge;  (* cyclic list of boundary edges *)
  (* orientation / attaching map data *)
}.

(* TODO:
   - Formalize attaching maps and checks that attaching cycles match boundary cycles.
   - Build surface models for torus and Klein bottle using cells attached to 1-skeletons.
*)

End Level2.
