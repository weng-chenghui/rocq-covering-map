(* Level1.v -- 1-dimensional CW discretization (edges / graphs) *)

From Coq Require Import Utf8_core.
From mathcomp Require Import ssreflect ssrfun ssrbool eqtype fintype.
From Level0 Require Export Level0.
(* coq-graph-theory imports will be added when encoding graphs *)

Module Level1.

(** Edges and incidence data for 1-skeleton. *)

Record edge := {
  e_from : Level0.vertex;
  e_to : Level0.vertex;
  orientation : bool; (* true = oriented in one direction *)
}.

(* TODO:
   - Replace edge representation with graph-theory graph type.
   - Encode adjacency, cycles that correspond to fundamental loops of torus and Klein bottle.
*)

End Level1.
