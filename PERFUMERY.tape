#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════


# ══════════════════════════════════════════════════════════════
# PERFUMERY.tape — architecture-current (editable per v1.2)
# Event history → PERFUMERY.log.tape sibling
# REWRITTEN 2026-05-15: was a .md→.tape lattice-tautology stub (~60
# σ/τ/φ-derived @D rows, zero science, zero citations). Now a real
# fragrance-chemistry & olfaction knowledge SSOT. See
# PERFUMERY.log.tape audit + rewrite events.
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "perfumery" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · perfumery substrate — fragrance chemistry & olfaction knowledge SSOT"
  brief = "physicochemistry of odorant volatility & the note pyramid · olfactory-receptor biology · aroma-material chemistry · IFRA / allergen / phototoxicity regulatory ceilings · real cited science · n=6 NOT used as derivation"
  parent = "dancinlab/florea"
  prior-parent = "dancinlab/hexa-bio (migrated 2026-05-15 per DECOMPOSITION_PLAN.md)"
  rewritten = "2026-05-15 — was a lattice-tautology stub (generic 'fragrance · aromatic chemistry' brief, σ/τ/φ-derived rows, no science, no citations); rewritten as a real-science SSOT with cited fragrance chemistry + real-limit anchors (see PERFUMERY.log.tape audit + rewrite events)"
  sibling-log = "PERFUMERY.log.tape"
  scope = "in-silico knowledge SSOT · fragrance-science survey · NOT a formulation / safety / IFRA-compliance / toxicology service"

@N scope_disclaimer := "knowledge-SSOT honesty" :: note [required]
  text = "This tape is a fragrance-science knowledge SSOT, NOT formulation advice and NOT a safety determination. Real fragrance products require formal IFRA-Standard compliance, toxicological / safety assessment, and allergen labelling performed by qualified safety assessors (e.g. a certified perfumer + a regulatory toxicologist) — none of which is delivered here. Quantitative values are stated qualitatively / order-of-magnitude; exact use-level limits, thresholds, and concentrations must be taken from primary IFRA / regulatory / peer-reviewed sources, not from this file."

# ── §1 Physicochemistry of volatility & the note pyramid ──────────────

@D vol_note_pyramid := "vapor pressure sets the note pyramid" :: mechanism [ok]
  core = "A fragrance is perceived as a time sequence — top notes, then heart (middle) notes, then base notes — because its constituents differ in volatility. Volatility is governed by each molecule's saturation vapor pressure (and, in a mixture, its activity / partition behaviour out of the matrix into air): higher vapor pressure → faster evaporation → earlier perceived, shorter-lived; lower vapor pressure → slower release → later, longer-lived."
  top = "Top notes: high-vapor-pressure, typically low-molecular-weight, often more volatile materials (e.g. citrus terpenes such as limonene; light aldehydes) — perceived first, fade fastest."
  heart = "Heart notes: intermediate volatility (e.g. many floral materials) — the body of the composition."
  base = "Base notes: low-vapor-pressure, typically higher-molecular-weight / less volatile materials (e.g. musks, resins, woody/amber materials) — perceived last, persist longest; also act as fixatives that retard the evaporation of more volatile partners."
  reference = "Classical perfumery practice and aroma-material physical-property compendia; see [@x_arctander]."
  |> "[@x_arctander]"

@D vol_hard_limit := "a top note cannot be made to last like a base note" :: mechanism [ok]
  statement = "Longevity is bounded by thermodynamics. A high-volatility top-note molecule has an intrinsically high vapor pressure; no formulation trick converts it into a long-lasting base note. Fixatives, encapsulation, profragrances and matrix/substantivity effects can only SLOW its release — they reduce the effective evaporation rate, they do not abolish the molecule's vapor pressure."
  consequence = "Perfume 'longevity' claims are bounded by the volatility of the actual odorants used; a citrus-dominant accord is physicochemically constrained to be short-lived on skin relative to a resin/musk base. This is a HARD physicochemical ceiling (see [@lim_volatility_ceiling])."
  fixative-role = "Fixatives / low-volatility carriers and substantive base materials extend perceived life by lowering release rate and by sustaining a long tail — not by overriding the top note's vapor pressure."
  |> "[@x_arctander]"

# ── §2 Olfaction — receptor biology & perception ──────────────────────

@D olf_receptors := "olfactory receptors are a large GPCR family with combinatorial coding" :: mechanism [ok]
  core = "Odorant detection begins at olfactory sensory neurons expressing odorant receptors, which form a very large multigene family of G-protein-coupled receptors (GPCRs). Buck & Axel identified this family in 1991 (Nobel Prize in Physiology or Medicine, 2004)."
  combinatorial = "Coding is combinatorial: one receptor responds to multiple odorants and one odorant activates a combination of receptors, so the identity of a smell is a population code across receptor types — not a one-molecule-one-receptor mapping."
  consequence = "Odor character is not predictable from a single structural parameter; structure–odor relationships are real but partial and empirical, which is why perfumery remains substantially an empirical craft informed by chemistry."
  |> "[@x_buck_axel_1991]"

@D olf_threshold := "odor detection thresholds span orders of magnitude" :: mechanism [ok]
  core = "Each odorant has a detection threshold — the minimum concentration at which it is perceptible. Thresholds differ between materials by many orders of magnitude, so a trace high-impact material can dominate an accord while a low-impact material may be inconspicuous even at high concentration."
  consequence = "Perceived intensity is NOT proportional to mass fraction; formulation balances threshold/impact, not just concentration. Specific threshold figures must be taken from primary measurement compendia, not asserted here."
  caveat = "Thresholds are method- and panel-dependent; values in the literature vary. This tape states the qualitative principle only."
  |> "[@x_arctander]"

@D olf_adaptation := "olfactory adaptation & anosmia limit sustained perception" :: mechanism [ok]
  adaptation = "Olfactory perception adapts: continuous exposure to an odorant reduces its perceived intensity over seconds-to-minutes (sensory adaptation / habituation). A wearer characteristically stops smelling their own fragrance well before it has physically decayed."
  anosmia = "Specific anosmia is real: some individuals cannot smell particular materials (a classic example is variable sensitivity to certain musk macrocycles) due to receptor-repertoire variation. There is no single universal olfactory experience of a given formula."
  consequence = "'Longevity' as reported by a wearer conflates physicochemical decay ([@vol_hard_limit]) with adaptation; the two are distinct and adaptation is a perceptual, not chemical, limit ([@lim_adaptation])."
  |> "[@x_buck_axel_1991]"

# ── §3 Aroma materials — chemistry of the palette ─────────────────────

@D mat_natural_vs_synthetic := "natural vs synthetic aroma materials" :: mechanism [ok]
  naturals = "Naturals (essential oils, absolutes, resinoids, CO2 extracts) are complex multi-component mixtures dominated by terpenoids and aromatic/aliphatic odorants; composition reflects the botanical source, chemotype, harvest, and extraction method."
  synthetics = "Synthetic aroma chemicals are defined single molecules (or controlled mixtures) — reproducible, often higher-impact, and frequently the only route to certain odor effects (e.g. aldehydic, many musks) and to materials that are scarce, unstable, or restricted as naturals."
  practice = "Modern perfumery uses both; the choice is driven by odor profile, stability, cost, regulatory status, and reproducibility — not by any numeric lattice."
  reference = "Aroma-material identity and properties: see [@x_arctander]."
  |> "[@x_arctander]"

@D mat_accords := "accords are engineered odor blends" :: mechanism [ok]
  core = "An accord is a balanced sub-blend of materials that reads as a single new olfactory impression (analogous to a musical chord). Accords are built empirically by trained perfumers against the combinatorial perception of [@olf_receptors]; the number of materials in an accord or a formula is a creative/engineering choice, NOT a derivable constant."
  consequence = "Any claim that 'the number of notes / accords / grades equals N because of a lattice' is a category error — see [@f_lattice_fit]."

@D mat_batch_variability := "natural inputs vary batch to batch" :: mechanism [ok]
  statement = "Naturals are agricultural products: the composition of an essential oil or absolute varies with species/chemotype, soil, climate, harvest year, and processing. Two batches of the 'same' natural are chemically non-identical."
  consequence = "Batch-to-batch odor variability of naturals is a HARD input limit ([@lim_natural_variability]); it is managed by blending, GC-profiling, standardisation against references, and substitution with synthetics — it cannot be eliminated while botanical inputs are used."
  |> "[@x_arctander]"

# ── §4 Safety & regulatory ceilings (real, binding) ───────────────────

@D reg_ifra := "IFRA Standards cap fragrance-material use levels" :: regulatory [ok]
  core = "The International Fragrance Association (IFRA) publishes the IFRA Standards: restrictions, prohibitions, and maximum use-level limits for fragrance materials in consumer products, derived from safety assessments (the IFRA/RIFM programme). Compliance is the binding industry self-regulatory framework; specific materials and their permitted concentrations are defined in the current IFRA Standards, which are periodically amended."
  consequence = "A formula's composition is constrained by IFRA use-level limits per product category — a real ceiling on what concentrations of which materials may be used, independent of any aesthetic or lattice consideration. Exact limits MUST be read from the current IFRA Standards, not from this file."
  |> "[@x_ifra]"

@D reg_allergens := "EU-labelled fragrance allergens are a regulatory constraint" :: regulatory [ok]
  core = "A defined set of fragrance materials is recognised as established or potential skin sensitisers and is subject to mandatory ingredient labelling above threshold concentrations under EU cosmetics regulation. The classic group includes materials such as limonene, linalool, eugenol, isoeugenol, cinnamal, geraniol, citral and others."
  autoxidation = "Some of these (e.g. limonene, linalool) are weak sensitisers as supplied but form more potent skin-sensitising hydroperoxides on AUTOXIDATION (air/light exposure during storage) — so antioxidant stabilisation and freshness matter to the realised allergen risk, not just the as-formulated level."
  consequence = "Allergen content drives mandatory labelling and constrains formulation/marketing; this is a real REGULATORY / SAFETY ceiling ([@lim_regulatory_ceiling]). The precise allergen list and labelling thresholds are set by current regulation and must be taken from the primary regulatory text."
  |> "[@x_ifra]"

@D reg_phototoxicity := "furocoumarin phototoxicity caps citrus oils" :: regulatory [ok]
  core = "Expressed (cold-pressed) citrus peel oils — notably bergamot — contain furocoumarins (psoralens) such as bergapten (5-methoxypsoralen). These are phototoxic: combined with UVA they can cause phototoxic skin reactions (a berloque-dermatitis-type effect)."
  mitigation = "Industry practice / IFRA limits the furocoumarin content of leave-on products (e.g. use of furocoumarin-reduced 'FCF' bergamot, or low use levels) — a hard cap on how much expressed bergamot a skin-applied product may contain."
  consequence = "A real photochemical/toxicological ceiling on a specific, widely-used natural; folds into [@lim_regulatory_ceiling]."
  |> "[@x_ifra]"

# ── §5 Mechanistic honesty — odor-theory status ───────────────────────

@N odor_theory_status := "shape theory mainstream; vibration theory contested-minority" :: note [required]
  text = "Mechanistic honesty: the mainstream, broadly accepted model of olfactory receptor activation is a molecular-recognition (shape / docking) view consistent with the GPCR biology of [@olf_receptors] (Buck & Axel). The 'vibration' (inelastic-electron-tunnelling) theory associated with Luca Turin is a contested MINORITY hypothesis that is not generally accepted and remains disputed in the literature. This tape presents shape/recognition as the working mainstream model and explicitly flags vibration theory as a minority, unsettled view — it is NOT asserted as fact."

# ── §6 Real-limit anchors (LATTICE_POLICY g1 — real-limits-first) ─────

@D lim_volatility_ceiling := "thermodynamic volatility ceiling on longevity" :: real-limit [ok required]
  wall = "HARD WALL (physicochemical)"
  statement = "Perceived longevity of a fragrance is bounded by the vapor pressures of its actual odorants. A high-volatility top note cannot be engineered to persist like a low-volatility base note; fixatives/encapsulation only slow release."
  consequence = "Longevity claims must be referenced to the volatility class of the materials actually used, never asserted independently of chemistry. Anchors [@vol_note_pyramid] / [@vol_hard_limit]."

@D lim_adaptation := "olfactory adaptation limits perceived persistence" :: real-limit [ok required]
  wall = "HARD WALL (perceptual)"
  statement = "Sensory adaptation reduces perceived intensity of a continuously present odorant within seconds-to-minutes; specific anosmia removes some materials from some perceivers entirely."
  consequence = "Wearer-reported 'longevity' is not a pure physicochemical measurement; perceptual adaptation is an independent, non-removable limit. Anchors [@olf_adaptation]."

@D lim_regulatory_ceiling := "IFRA / allergen / phototoxicity regulatory ceiling" :: real-limit [ok required]
  wall = "SOFT / REGULATORY WALL"
  statement = "IFRA Standard use-level limits, EU allergen-labelling obligations, and furocoumarin phototoxicity caps bound which materials may be used and at what concentration in a given product category."
  consequence = "Formulation freedom is capped by an externally-set, periodically-amended regulatory framework — not by aesthetics and not by a lattice. Anchors [@reg_ifra] / [@reg_allergens] / [@reg_phototoxicity]."

@D lim_natural_variability := "natural-input batch variability" :: real-limit [ok required]
  wall = "HARD WALL (input)"
  statement = "Botanical naturals vary in composition batch to batch; identical reproduction from naturals alone is impossible."
  consequence = "Reproducibility of a natural-containing accord is bounded by agricultural variability; managed (blending, standardisation, synthetics) but not eliminated. Anchors [@mat_batch_variability]."

# ── §7 n=6 lattice stance (HONEST — no natural invariant) ─────────────

@F f_lattice_fit := "lattice-fit-on-fragrance-science" :: governance [required deny:write]
  pattern = "Deriving fragrance longevity / quality variance / note counts / accord counts / grade counts / efficacy FROM the n=6 lattice (σ, τ, φ, J₂, sopfr, n/φ) — e.g. 'quality variance improves σ-φ=10×', 'note pyramid = n/φ = 3', 'base-note longevity = J₂ = 24 h', 'efficiency ratio = 1/(σ-φ) = 10%'."
  why = "The pre-rewrite tape did exactly this across ~60 rows; florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid claiming '<verb> works because n=6' without the real underlying chemistry."
  remedy = "Cite the real fragrance-chemistry / olfaction / regulatory literature in this tape's @X entries and anchor claims to physicochemical / biological / regulatory real-limits. The lattice is NOT a derivation here."

@N n6_honest_stance := "perfumery exposes no natural n=6 invariant" :: note [required]
  text = "Stated plainly: fragrance chemistry and olfaction expose NO natural n=6 invariant. The number of notes in a pyramid (a perceptual/creative convention), the number of fragrance families (a marketing taxonomy), perfume concentration grades, accord size, and aroma-material counts are NOT lattice-constrained — they are conventions, taxonomies, or empirical engineering choices. Carbon counts of terpene classes (C5/C10/C15...) follow isoprene-unit biosynthesis (the isoprene rule), benzene-ring carbon count follows aromatic chemistry, and a benzene ring having 6 carbons is a fact of organic chemistry — NOT evidence of an n=6 lattice governing perfumery; any numeric coincidence is observation, never derivation. Per LATTICE_POLICY g1/g2 + lattice-as-tool, the lattice is declined as a derivation tool here. This is the corrective for the audited pre-rewrite violation (see PERFUMERY.log.tape audit_governance_honesty)."

# ── §8 Verifiable predictions (real, falsifiable — NOT lattice) ───────

@D tp_1 := "TP-1 volatility orders the note pyramid" :: prediction [ok]
  claim = "Headspace analysis of an evaporating fragrance over time will show high-vapor-pressure materials dominate early and low-vapor-pressure materials dominate late, in vapor-pressure order."
  falsifier = "If a high-vapor-pressure top note persists in headspace as long as a low-vapor-pressure base note at equal initial mass and no kinetic barrier, [@vol_hard_limit] is wrong."
  source = "[@x_arctander]"

@D tp_2 := "TP-2 combinatorial receptor coding" :: prediction [ok]
  claim = "A single odorant activates a combination of olfactory receptor types and a single receptor responds to multiple odorants (no one-to-one mapping)."
  falsifier = "If odor identity were shown to be a strict one-molecule-one-receptor code, [@olf_receptors] is wrong."
  source = "[@x_buck_axel_1991]"

@D tp_3 := "TP-3 autoxidation raises allergen potency" :: prediction [ok]
  claim = "Air/light-aged limonene or linalool is a more potent skin sensitiser than the freshly purified material, due to hydroperoxide formation."
  falsifier = "If aged and fresh limonene/linalool show identical sensitising potency, the autoxidation clause of [@reg_allergens] is wrong."
  source = "[@x_ifra]"

# ── §9 Cross-links ────────────────────────────────────────────────────

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §10 External citations (real literature / standards / reference) ──

@X x_buck_axel_1991 := "Buck L, Axel R 1991" :: literature [active]
  ref = "Buck L, Axel R. A novel multigene family may encode odorant receptors: a molecular basis for odor recognition. Cell 1991;65:175–187. (Identification of the odorant-receptor GPCR family; basis of the 2004 Nobel Prize in Physiology or Medicine awarded to Buck and Axel.)"

@X x_ifra := "IFRA Standards" :: literature [active]
  ref = "International Fragrance Association (IFRA). IFRA Standards (Code of Practice) — restrictions, prohibitions and maximum use-level limits for fragrance materials, derived from the IFRA/RIFM safety programme; periodically amended. Cited as a standards body / regulatory framework, not a single paper; consult the current IFRA Standards for exact materials and limits. (Related: EU Cosmetics Regulation fragrance-allergen labelling provisions.)"

@X x_arctander := "Arctander S — Perfume and Flavor Materials" :: literature [active]
  ref = "Arctander S. Perfume and Flavor Materials of Natural Origin (1960) and Perfume and Flavor Chemicals (Aroma Chemicals) (1969). Classic reference compendia of aroma-material identity, odor description, and physical properties; standard perfumery references. Cited as foundational reference works (author/era), not for any specific numeric figure."
