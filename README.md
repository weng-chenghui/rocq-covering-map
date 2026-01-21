# rocq-covering-map

Formalization of a covering map from two tori to a Klein bottle in Rocq,
with CW discretizations at levels 0, 1 and 2.

Goals
- Provide combinatorial CW models (0-, 1-, 2-skeletons) for two tori and the Klein bottle.
- Define the 2-to-1 covering map and prove covering properties at each CW level.
- Reuse Rocq and MathComp Analysis for analytic and topological foundations, and coq-graph-theory for combinatorial graph constructions.

Key dependencies
- rocq (>= 9.0)
- mathcomp (>= 2.4.0)
- mathcomp-analysis
- coq-graph-theory

Layout
- src/
  - Level0.v       -- 0-skeleton (vertices)
  - Level1.v       -- 1-skeleton (edges / graphs)
  - Level2.v       -- 2-skeleton (cells / faces)
  - Covering.v     -- covering map, main statements and proofs
- _CoqProject
- rocq-covering-map.opam
- Makefile
- LICENSE
- .gitignore
- .github/workflows/ci.yml

Quick local build
1. Create an opam switch that includes Rocq (Rocq opam packages typically bring the correct Coq version):
   opam switch create . <ocaml-compiler>
2. Install dependencies listed in `rocq-covering-map.opam`:
   opam install . --deps-only
3. Build using coq_makefile:
   coq_makefile -f _CoqProject -o Makefile.coq
   make -f Makefile.coq

Notes
- The opam file relies on Rocq to provide Coq; Coq is therefore not listed explicitly.
- Build system: _CoqProject / coq_makefile (as requested).
