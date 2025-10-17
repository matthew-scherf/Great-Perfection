theory Dzogchen
  imports Main
begin
(*
  Complete Formal Axiomatization of Dzogchen - The Great Perfection
  Copyright (C) 2025 Matthew Scherf
  
  This work is licensed under:
  - Creative Commons Attribution 4.0 International (CC BY 4.0) for documentation
  - BSD-3-Clause for code
  
  First verified: October 15, 2025
  DOI: https://doi.org/10.5281/zenodo.17333604
  
  Citation: Scherf, M. (2025). Complete Formal Axiomatization of Dzogchen:
  Machine-Verified Non-Dual Metaphysics. Isabelle/HOL formalization.
*)
(* ------------------------ Types & Predicates ------------------------ *)

typedecl entity

consts
  Ground               :: "entity => bool"
  Rigpa                :: "entity => bool"
  Subject              :: "entity => bool"
  Phenomenon           :: "entity => bool"
  Buddha               :: "entity => bool"
  SentientBeing        :: "entity => bool"
  MaRigpa              :: "entity => bool"
  PrimordialPurity     :: "entity => bool"
  SpontaneousPresence  :: "entity => bool"
  CompassionateEnergy  :: "entity => bool"
  Samsara              :: "entity => bool"
  Nirvana              :: "entity => bool"
  ArisesFrom           :: "entity => entity => bool"
  SelfLiberated        :: "entity => bool"
  Recognizes           :: "entity => entity => bool"

  (* Meta-classifiers *)
  Conceptual           :: "(entity => bool) => bool"
  Inseparable          :: "(entity => bool) => bool"

  (* Non-duality relation *)
  NonDual              :: "entity => entity => bool"

(* ----------------------------- Axioms ------------------------------- *)

(* Uniqueness of Ground and its three aspects *)
axiomatization where
  Ground_Unique: "EX! g. Ground g" and
  Ground_Three_Aspects:
    "ALL g. Ground g --> (PrimordialPurity g & SpontaneousPresence g & CompassionateEnergy g)"

(* Kadag emptiness only excludes Conceptual predicates at Ground *)
axiomatization where
  Kadag_Empty:
    "ALL g. Ground g & PrimordialPurity g --> (ALL P. Conceptual P --> ~ P g)"

(* Lhundrub: phenomena arise (display) *)
axiomatization where
  Lhundrub_SelfPerfected:
    "ALL g. Ground g & SpontaneousPresence g --> (ALL p. Phenomenon p --> ArisesFrom p g)"

(* Non-duality core (as an equivalence) *)
axiomatization where
  Rigpa_NonDual_Ground: "ALL r g. Rigpa r & Ground g --> NonDual r g" and
  NonDual_Reflexive:    "ALL x. NonDual x x" and
  NonDual_Symmetric:    "ALL x y. NonDual x y --> NonDual y x" and
  NonDual_Transitive:   "ALL x y z. NonDual x y --> NonDual y z --> NonDual x z"

(* Sameness for a *controlled* class of predicates only *)
axiomatization where
  NonDual_Sameness:
    "ALL x y. NonDual x y --> (ALL P. Inseparable P --> (P x = P y))"

(* Declare which predicates are inseparable across NonDual *)
axiomatization where
  Insep_PrimordialPurity:    "Inseparable PrimordialPurity" and
  Insep_SpontaneousPresence: "Inseparable SpontaneousPresence" and
  Insep_CompassionateEnergy: "Inseparable CompassionateEnergy"

(* Existence and path axioms *)
axiomatization where
  Subject_Exists: "EX s. Subject s" and
  Subject_Is_Rigpa: "ALL s. Subject s --> (EX r. Rigpa r & NonDual s r)" and
  Buddha_Nature_Present: "ALL s. Subject s --> (EX b. Buddha b & NonDual s b)" and
  MaRigpa_NonRecognition:
    "ALL s. Subject s --> (MaRigpa s = (ALL r. Rigpa r --> ~ Recognizes s r))" and
  Recognition_Liberates:
    "ALL s r. Subject s & Rigpa r & Recognizes s r --> Buddha s" and
  Phenomena_SelfLiberated:
    "ALL p. Phenomenon p --> SelfLiberated p"

(* Ground is not (conventionally) Buddha/SentientBeing *)
axiomatization where
  Ground_Beyond_Duality:
    "ALL g. Ground g --> (~ Buddha g & ~ SentientBeing g)"

(* Samsara = Nirvana equivalence *at* the Ground (for what is NonDual with it) *)
axiomatization where
  Samsara_Nirvana_NonDual:
    "ALL x g. Ground g & NonDual x g --> (Samsara x = Nirvana x)"

(* Appearances arise from Ground but are not the Ground itself *)
axiomatization where
  Appearances_Ground_Display:
    "ALL p g. Phenomenon p & Ground g & ~ Ground p --> ArisesFrom p g"

(* -------------------------- Basic Consequences ---------------------- *)

lemma Rigpa_Exists: "EX r. Rigpa r"
proof -
  obtain s where "Subject s" using Subject_Exists by blast
  then obtain r where "Rigpa r & NonDual s r" using Subject_Is_Rigpa by blast
  thus ?thesis by blast
qed

lemma Subject_NonDual_Rigpa:
  "ALL s. Subject s --> (EX r. Rigpa r & NonDual s r)"
  using Subject_Is_Rigpa by blast

lemma Recognition_Is_Enlightenment:
  "ALL s r. Subject s & Rigpa r & Recognizes s r --> Buddha s"
  using Recognition_Liberates by blast

lemma Primordial_Buddhahood:
  "ALL s. Subject s --> (EX b. Buddha b & NonDual s b)"
  using Buddha_Nature_Present by blast

lemma Ground_Beyond_Elaboration:
  "ALL g P. Ground g & Conceptual P --> ~ P g"
  using Ground_Three_Aspects Kadag_Empty by blast

(* Chain Subject ~ Rigpa ~ Ground *)
lemma Subject_NonDual_Ground:
  "ALL s g. Subject s & Ground g --> (EX r. Rigpa r & NonDual s g)"
proof (intro allI impI)
  fix s g assume assm: "Subject s & Ground g"
  then obtain r where r_props: "Rigpa r & NonDual s r" using Subject_Is_Rigpa by blast
  from r_props assm have "Rigpa r" and "Ground g" by auto
  then have "NonDual r g" using Rigpa_NonDual_Ground by blast
  with r_props have "NonDual s g" using NonDual_Transitive by blast
  thus "EX r. Rigpa r & NonDual s g" using r_props by blast
qed

(* Samsara = Nirvana for subjects as corollary *)
lemma Samsara_eq_Nirvana_for_Subjects:
  "ALL s g. Subject s & Ground g --> (Samsara s = Nirvana s)"
proof (intro allI impI)
  fix s g assume H: "Subject s & Ground g"
  from H obtain r where "Rigpa r & NonDual s g"
    using Subject_NonDual_Ground by blast
  with H show "Samsara s = Nirvana s"
    using Samsara_Nirvana_NonDual by blast
qed

(* Direct introduction: *)
axiomatization where
  Direct_Introduction:
    "ALL s r. Subject s & Rigpa r & NonDual s r --> Recognizes s r"

theorem Introduction_Recognition:
  "ALL s. Subject s --> (EX r. Rigpa r & Recognizes s r)"
proof (intro allI impI)
  fix s assume "Subject s"
  then obtain r where "Rigpa r & NonDual s r" using Subject_Is_Rigpa by blast
  hence "Recognizes s r" using \<open>Subject s\<close> Direct_Introduction by blast
  thus "EX r. Rigpa r & Recognizes s r" using \<open>Rigpa r & NonDual s r\<close> by blast
qed

theorem All_Phenomena_SelfLiberate:
  "ALL p. Phenomenon p --> SelfLiberated p"
  using Phenomena_SelfLiberated by blast

end