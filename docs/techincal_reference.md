# Technical Reference

## Axiom Summary

### Ground Metaphysics

| Axiom | Name | Statement |
|-------|------|-----------|
| A1 | Ground Unique | ∃!g. Ground g |
| A2 | Ground Three Aspects | ∀g. Ground g → (PrimordialPurity g ∧ SpontaneousPresence g ∧ CompassionateEnergy g) |
| A3 | Kadag Empty | ∀g. (Ground g ∧ PrimordialPurity g) → (∀P. Conceptual P → ¬P g) |
| A4 | Lhundrub Self-Perfected | ∀g. (Ground g ∧ SpontaneousPresence g) → (∀p. Phenomenon p → ArisesFrom p g) |
| A5 | Ground Beyond Duality | ∀g. Ground g → (¬Buddha g ∧ ¬SentientBeing g) |

### Non-Duality Structure

| Axiom | Name | Statement |
|-------|------|-----------|
| A6 | Rigpa NonDual Ground | ∀r g. (Rigpa r ∧ Ground g) → NonDual r g |
| A7 | NonDual Reflexive | ∀x. NonDual x x |
| A8 | NonDual Symmetric | ∀x y. NonDual x y → NonDual y x |
| A9 | NonDual Transitive | ∀x y z. (NonDual x y ∧ NonDual y z) → NonDual x z |
| A10 | NonDual Sameness | ∀x y. NonDual x y → (∀P. Inseparable P → (P x ↔ P y)) |

### Inseparable Predicates

| Axiom | Name | Statement |
|-------|------|-----------|
| A11 | Insep PrimordialPurity | Inseparable PrimordialPurity |
| A12 | Insep SpontaneousPresence | Inseparable SpontaneousPresence |
| A13 | Insep CompassionateEnergy | Inseparable CompassionateEnergy |

### Subject and Recognition

| Axiom | Name | Statement |
|-------|------|-----------|
| A14 | Subject Exists | ∃s. Subject s |
| A15 | Subject Is Rigpa | ∀s. Subject s → (∃r. Rigpa r ∧ NonDual s r) |
| A16 | Buddha Nature Present | ∀s. Subject s → (∃b. Buddha b ∧ NonDual s b) |
| A17 | MaRigpa NonRecognition | ∀s. Subject s → (MaRigpa s ↔ (∀r. Rigpa r → ¬Recognizes s r)) |
| A18 | Recognition Liberates | ∀s r. (Subject s ∧ Rigpa r ∧ Recognizes s r) → Buddha s |
| A19 | Direct Introduction | ∀s r. (Subject s ∧ Rigpa r ∧ NonDual s r) → Recognizes s r |

### Liberation and Path

| Axiom | Name | Statement |
|-------|------|-----------|
| A20 | Phenomena SelfLiberated | ∀p. Phenomenon p → SelfLiberated p |
| A21 | Samsara Nirvana NonDual | ∀x g. (Ground g ∧ NonDual x g) → (Samsara x ↔ Nirvana x) |
| A22 | Appearances Ground Display | ∀p g. (Phenomenon p ∧ Ground g ∧ ¬Ground p) → ArisesFrom p g |

## Theorem Summary

### Core Theorems

| Theorem | Name | Statement |
|---------|------|-----------|
| T1 | Rigpa Exists | ∃r. Rigpa r |
| T2 | Subject NonDual Rigpa | ∀s. Subject s → (∃r. Rigpa r ∧ NonDual s r) |
| T3 | Recognition Is Enlightenment | ∀s r. (Subject s ∧ Rigpa r ∧ Recognizes s r) → Buddha s |
| T4 | Primordial Buddhahood | ∀s. Subject s → (∃b. Buddha b ∧ NonDual s b) |
| T5 | Ground Beyond Elaboration | ∀g P. (Ground g ∧ Conceptual P) → ¬P g |
| T6 | Subject NonDual Ground | ∀s g. (Subject s ∧ Ground g) → (∃r. Rigpa r ∧ NonDual s g) |
| T7 | Samsara eq Nirvana for Subjects | ∀s g. (Subject s ∧ Ground g) → (Samsara s ↔ Nirvana s) |

### Master Theorems

| Theorem | Name | Statement |
|---------|------|-----------|
| T8 | Introduction Recognition | ∀s. Subject s → (∃r. Rigpa r ∧ Recognizes s r) |
| T9 | All Phenomena SelfLiberate | ∀p. Phenomenon p → SelfLiberated p |

## Predicate Glossary

**Ground** - The primordial basis of all experience possessing three inseparable aspects (Tibetan: གཞི་ gzhi)

**Rigpa** - Primordial awareness that recognizes its own nature (Tibetan: རིག་པ་ rig pa)

**Subject** - Any experiencing being, sentient being with awareness

**Phenomenon** - Any appearance or manifestation in experience

**Buddha** - Enlightened being who has recognized rigpa

**SentientBeing** - Ordinary being subject to confusion and suffering

**MaRigpa** - Non-recognition, the state of not recognizing rigpa (Tibetan: མ་རིག་པ་ ma rig pa)

**PrimordialPurity** - The emptiness aspect of the Ground, free from conceptual elaboration (Tibetan: ཀ་དག་ ka dag)

**SpontaneousPresence** - The luminous aspect of the Ground, spontaneous arising of appearances (Tibetan: ལྷུན་གྲུབ་ lhun grub)

**CompassionateEnergy** - The responsive awareness aspect of the Ground (Tibetan: ཐུགས་རྗེ་ thugs rje)

**Samsara** - Cyclic existence characterized by suffering and confusion

**Nirvana** - Liberation characterized by recognition and freedom

**ArisesFrom** - Relation of spontaneous manifestation from source

**SelfLiberated** - Quality of arising and dissolving without leaving karmic trace

**Recognizes** - Relation where subject directly knows rigpa as its own nature

**Conceptual** - Meta-predicate marking properties that are conceptual elaborations

**Inseparable** - Meta-predicate marking properties that transfer across NonDual relation

**NonDual** - Equivalence relation expressing ultimate non-difference

## Proof Statistics

- Total axioms: 22
- Core ground axioms: 5
- Non-duality axioms: 8
- Subject and path axioms: 7
- Display and liberation axioms: 2
- Total theorems proven: 9 major theorems
- Master theorems: 2
- Verification time: approximately 20 seconds
- Proof checking: Isabelle/HOL 2025 kernel
- Model checking: Nitpick over cardinalities 1-5
- Counterexamples found: 0

## Dependencies

The formalization requires:
- Isabelle/HOL 2025
- Standard HOL library (Main.thy)
- No external AFP entries required

## Verification Method

All theorems verified using:
1. Interactive theorem proving in Isabelle/HOL
2. Automated tactics (blast, auto, metis)
3. Nitpick model checking with user_axioms = true
4. Manual inspection of proof structure

The Nitpick checks confirm that no finite countermodels exist within tested cardinalities. This provides strong evidence of consistency though not absolute proof for infinite domains.

## Comparison Across Three Traditions

| Aspect | Advaita Vedanta | Daoism | Dzogchen |
|--------|-----------------|--------|----------|
| Core axioms | 9 | 13 | 5 (ground) |
| Extension axioms | 31 | 7 | 17 (non-duality, path) |
| Total theorems | 30+ | 13 | 9 |
| Central absolute | Brahman | Dao | Ground |
| Central awareness | Ātman | TrueMan | Rigpa |
| Identity claim | Brahman = Ātman | Dao = TrueMan | Ground = Rigpa |
| Causation | Denied (ajātivāda) | Denied (spontaneity) | Denied (lhundrub) |
| Phenomenal world | Vivarta (appearance) | Arising/returning | Display (rolpa) |
| Ultimate nature | Nirguṇa (no qualities) | Formless/nameless | Kadag (primordial purity) |
| Liberation | Recognition (aparoksha) | Wu-wei (non-action) | Recognition (rigpa) |
| Path structure | Gradual or direct | Naturalness | Direct (introduction) |

All three systems prove non-dual identity between awareness and absolute. All three explain phenomena as spontaneous display. All three deny ultimate causation. The structural convergence across independent traditions provides evidence for universality of non-dual insight.

## Novel Features of Dzogchen Formalization

### Equivalence Relation for Non-Duality

Unlike the Advaita and Daoist formalizations which use identity or simple predicates, Dzogchen uses an explicit equivalence relation. This allows more nuanced reasoning about what properties transfer across non-duality and which do not.

### Inseparable Predicates

The formalization introduces a meta-level classification (Inseparable) to control which properties must be shared by non-dual entities. This prevents the collapse of all distinctions while maintaining non-dual identity.

### Recognition as Path

The formalization explicitly models the soteriological path through recognition axioms. This captures the distinctive Dzogchen emphasis on direct introduction and instant recognition as sufficient for enlightenment.

### Self-Liberation

The concept of self-liberating appearances is unique to this formalization. It captures the Dzogchen teaching that phenomena need not be suppressed or transformed, only recognized in their true nature.

### Three Aspects of Ground

The formalization proves inseparability of primordial purity, spontaneous presence, and compassionate energy. This captures the classical teaching that emptiness and appearance are not different.

## Technical Innovations

The use of higher-order predicates (Conceptual, Inseparable) allows the formalization to make meta-level distinctions. This provides more expressive power than first-order predicate logic while remaining within Isabelle/HOL's framework.

The equivalence relation approach to non-duality is more flexible than simple identity. It allows us to prove that x and y are non-dual without forcing them to be the same entity at all levels of description.

The controlled transfer of properties through Inseparable predicates solves a major challenge in formalizing non-duality. Too much transfer collapses distinctions. Too little transfer fails to capture non-dual identity. The Inseparable mechanism provides exactly the right balance.

## Limitations and Future Work

The formalization captures core Dzogchen metaphysics but omits several elements.

### Trekchö and Tögal

The two main Dzogchen practices (cutting through and direct crossing) are not formalized. These are practical methods rather than metaphysical claims, but future work might model their relationship to recognition.

### Four Visions

The progressive visions experienced in tögal practice could potentially be formalized as stages of recognition clarity. This would connect contemplative phenomenology with logical structure.

### Tantric Elements

Dzogchen developed within Vajrayana Buddhism and includes tantric elements (deity yoga, mantra, subtle body). These are not captured in the present formalization which focuses on view rather than method.

### Historical Lineages

Different Dzogchen lineages (Nyingma, Bon, various terma traditions) emphasize different aspects. The formalization attempts to capture common core but does not address lineage-specific teachings.

Despite these limitations, the work establishes proof of concept. Dzogchen metaphysics admits rigorous logical formalization. The core insights about recognition, self-liberation, and non-duality can be proven consistent using modern formal methods.