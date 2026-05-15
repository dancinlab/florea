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
# MENS-INTIMATE-CLEANSER.tape — architecture-current (editable per v1.2)
# Event history → MENS-INTIMATE-CLEANSER.log.tape sibling
# REWRITTEN 2026-05-15: was a lattice-tautology .md→.tape stub; rebuilt
# as a real male-genital skin-cleansing hygiene-science SSOT.
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "mens-intimate-cleanser" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · male intimate (penile / scrotal) skin-cleansing — consumer hygiene & dermatology knowledge SSOT"
  brief = "evidence-based gentle external cleansing of male genital skin: acid-mantle / barrier biology · surfactant mildness science · commensal-microbiome preservation · NOT n=6-derived · NOT medical advice"
  parent = "dancinlab/florea"
  prior-parent = "dancinlab/hexa-bio (migrated 2026-05-15 per DECOMPOSITION_PLAN.md)"
  rewritten = "2026-05-15 — was a pure n=6 lattice-tautology stub (generic 'per-domain substrate · n=6 mapping' brief; σ/τ/φ-derived efficacy/safety numbers; zero science; zero citations). See MENS-INTIMATE-CLEANSER.log.tape audit + supersede events."
  sibling-log = "MENS-INTIMATE-CLEANSER.log.tape"
  scope = "in-silico consumer-hygiene knowledge SSOT — external genital skin care only · NOT a marketed product · NOT medical advice"

@N scope_disclaimer := "consumer-hygiene scope, not medical advice" :: note [required]
  text = "This tape is a consumer-hygiene knowledge SSOT for routine EXTERNAL washing of healthy male genital skin. A cleanser is a hygiene product, NOT a therapeutic: it does NOT treat or prevent balanitis, candidiasis, sexually transmitted infections, contact dermatitis, psoriasis, lichen sclerosus, or any genital dermatosis. Persistent redness, itch, discharge, pain, ulceration, or any symptomatic condition requires evaluation by a clinician. Nothing here is diagnosis, treatment, or a substitute for professional medical care."

# ── §1 Skin biology of the male genital region ───────────────────────

@D bio_skin_structure := "genital skin is thin, occluded, friction-prone" :: mechanism [ok]
  core = "Penile (especially inner foreskin / glans in the uncircumcised) and scrotal skin is comparatively thin, has a more permeable barrier, and is anatomically occluded by apposed skin folds and clothing."
  consequences = "Higher percutaneous absorption and higher reactivity to irritants/allergens than most body sites; warm, humid, occluded folds favor maceration and intertrigo (inflammation where skin rubs skin)."
  implication = "Cleansing of this region should be gentler and lower-irritancy than for thicker, exposed skin; aggressive scrubbing or harsh detergents disproportionately damage this site."
  |> "[@x_zhai_maibach_2002]"

@D bio_acid_mantle := "skin-surface acid mantle (acidic pH)" :: mechanism [ok]
  core = "Healthy skin surface is acidic — the 'acid mantle'. Natural surface pH on untreated skin is on the order of ~4–5 (older textbook ranges quote up to ~6); occluded/intertriginous and genital sites tend to run somewhat higher than exposed skin but remain in the mildly acidic-to-near-neutral band."
  function = "The acidic pH supports stratum-corneum barrier homeostasis (lipid-processing enzymes, corneocyte cohesion) and an antimicrobial milieu that favors commensal over pathogenic flora."
  cleanser-link = "High-pH (alkaline true-soap) washing transiently raises skin pH and can perturb barrier and flora; pH-balanced (mildly acidic / near-neutral) syndet cleansers better respect the acid mantle, especially at this sensitive site. See [@lim_acid_mantle]."
  |> "[@x_lambers_2006]"
  |> "[@x_ali_yosipovitch_2013]"

@D bio_smegma := "smegma is normal physiology, not dirt" :: mechanism [ok]
  core = "Smegma is a normal physiological accumulation of shed epithelial cells and sebaceous secretion under the foreskin; its presence is expected and not in itself pathological or 'unhygienic'."
  hygiene-point = "Routine care is gentle retraction (where anatomically possible and non-painful) and rinsing with water or a mild cleanser, then drying. It does NOT require antiseptics, vigorous scrubbing, or 'deep cleaning' claims."
  caution = "Forced retraction of a non-retractile foreskin (e.g. in children, or with phimosis) can cause injury and is contraindicated; this is an anatomy/clinical matter, not a cleanser feature."

# ── §2 Surfactant / cleanser chemistry (mildness vs detergency) ──────

@D chem_surfactant_irritancy := "anionic surfactants are more irritating" :: mechanism [ok]
  core = "Surfactant irritancy is structure-dependent. Strong anionic surfactants — classically sodium lauryl sulfate (SLS) — bind and denature stratum-corneum proteins and extract barrier lipids, producing barrier disruption and irritation; SLS is a standard positive control for irritation precisely because of this."
  milder = "Amphoteric (e.g. betaines), nonionic surfactants, and synthetic-detergent (syndet) systems, alone or as co-surfactants, lower the effective irritation potential relative to high-charge anionics by reducing monomer protein binding and barrier-lipid extraction."
  genital-relevance = "Because genital skin is thin and occluded ([@bio_skin_structure]), surfactant choice matters more here; a mild syndet / amphoteric formulation at acid-mantle-compatible pH is the lower-risk design."
  |> "[@x_ananthapadmanabhan_2004]"

@D chem_cleansing_tradeoff := "cleansing power vs mildness trade-off" :: mechanism [ok]
  core = "Detergency (soil/sebum removal) and mildness are partially opposing axes: the same lipid-/protein-interacting capacity that removes sebum also strips barrier lipids and perturbs corneocytes. A cleanser cannot be simultaneously maximally stripping and maximally mild."
  design = "Modern mild cleansers manage the trade-off via hydrophobically modified polymers, surfactant/co-surfactant micelle engineering, and pH control to lower skin deposition of harsh monomers while keeping adequate soil removal — a managed compromise, not an eliminated one. See [@lim_mildness_detergency]."
  for-this-site = "For routine genital hygiene the soil load is low (sweat, sebum, smegma), so the optimum sits far toward the mild end: water or a low-irritancy syndet is sufficient; high-detergency 'antibacterial deep-clean' positioning is the wrong operating point here."
  |> "[@x_ananthapadmanabhan_2004]"

# ── §3 Microbiome — preserve commensals, do not sterilize ────────────

@D micro_commensals := "resident genital-skin commensal flora" :: mechanism [ok]
  core = "Healthy genital skin carries a resident commensal microbiota (skin staphylococci/corynebacteria and, in moist occluded sites, Malassezia and low-level Candida among others). These commensals contribute to colonization resistance against pathogens and to acid-mantle maintenance."
  point = "A healthy state is a balanced ecosystem, not a sterile surface. The hygiene goal is removal of excess soil/sebum and odor precursors while LEAVING the commensal community substantially intact."

@D micro_overwash_harm := "over-washing / antiseptic overuse causes harm" :: mechanism [ok]
  core = "Frequent harsh washing, alkaline soap, or routine antiseptic/antibacterial use on healthy genital skin disrupts barrier and acid mantle and perturbs commensal flora (dysbiosis). Under warm, occluded conditions this favors overgrowth of opportunists — irritant/contact dermatitis and Candida-associated intertrigo are recognized outcomes of over-cleansing and irritant exposure at this site."
  honest-direction = "'Kills 99.9% of germs' / 'sterilizing' positioning is not a benefit for healthy genital skin — it is directionally HARMFUL. The intervention that fixes irritant balanitis is most often to STOP the harsh/antiseptic washing, not to add more. See [@lim_cannot_sterilize]."
  clinical-boundary = "Symptomatic balanitis / candidiasis is a clinical condition for a clinician (anti-fungal/anti-inflammatory therapy as indicated), NOT something a consumer cleanser treats — restating [@scope_disclaimer]."
  |> "[@x_edwards_2014]"

# ── §4 Formulation risk on thin genital skin ─────────────────────────

@D risk_contact_dermatitis := "fragrance / preservative contact dermatitis" :: real-limit [ok required]
  wall = "SOFT WALL (formulation-dependent)"
  statement = "Fragrances and certain preservatives are among the most common causes of allergic and irritant contact dermatitis in skin-care products. Applied to thin, occluded, more-permeable genital skin ([@bio_skin_structure]), the same ingredient carries a higher reaction risk than on thicker exposed skin; genital allergic contact dermatitis from personal-care products (including fragrance) is a documented presentation."
  consequence = "Lower-risk design for this site = fragrance-free (or minimal), low-sensitization preservative system, minimal excipient load. 'More actives / botanicals / fragrance' is a risk INCREASE here, not a quality signal."
  |> "[@x_zhai_maibach_2002]"
  |> "[@x_edwards_2014]"

# ── §5 Real-limit anchors (LATTICE_POLICY g1 — real-limits-first) ────

@D lim_cannot_sterilize := "cannot healthily sterilize commensal skin" :: real-limit [ok required]
  wall = "HARD WALL (biological)"
  statement = "Healthy genital skin is a commensal-colonized ecosystem whose flora provide colonization resistance and acid-mantle support. There is no 'cleaner because more sterile' axis to optimize: eliminating commensals is dysbiosis, which under occlusion promotes opportunistic overgrowth and dermatitis."
  consequence = "Any cleanser objective framed as maximizing antimicrobial kill on healthy skin is biologically wrong, not merely unproven. The achievable goal is soil/odor reduction with microbiome preservation."

@D lim_acid_mantle := "pH must respect the acid mantle" :: real-limit [ok required]
  wall = "HARD WALL (physiological)"
  statement = "Skin-surface barrier homeostasis and the protective antimicrobial milieu depend on a mildly acidic surface pH. A cleanser that drives surface pH strongly alkaline (true soap) perturbs barrier enzymes and flora; the design target is acid-mantle-compatible (mildly acidic to near-neutral) rinse-off pH."
  consequence = "pH is bounded by skin physiology, NOT a free parameter to be 'optimized' to an arbitrary number. There is no benefit to pushing pH outside the acid-mantle-compatible band."
  |> "[@x_lambers_2006]"
  |> "[@x_ali_yosipovitch_2013]"

@D lim_mildness_detergency := "surfactant mildness ↔ detergency trade-off" :: real-limit [ok required]
  wall = "SOFT WALL (chemistry / engineering)"
  statement = "Soil-removal capacity and barrier mildness are partially coupled through the same surfactant–protein/–lipid interactions. Formulation can shift, but not abolish, this trade-off; a cleanser cannot be simultaneously maximally stripping and maximally non-irritating."
  consequence = "Claims of 'powerful deep-cleansing AND ultra-gentle' over-state what surfactant chemistry allows. For this low-soil site the honest optimum is deliberately weak detergency + high mildness."
  |> "[@x_ananthapadmanabhan_2004]"

@D lim_not_therapeutic := "a cleanser is not a therapeutic" :: real-limit [ok required]
  wall = "HARD WALL (scope / regulatory)"
  statement = "Routine external cleansing is hygiene, not therapy. It does not diagnose, treat, cure, or prevent balanitis, candidiasis, STIs, or any genital dermatosis. Symptomatic disease has its own clinical pathway."
  consequence = "Any efficacy claim phrased as the cleanser treating/preventing a named genital condition is out of scope and unsupported — restating [@scope_disclaimer] as a hard limit."

# ── §6 n=6 lattice stance (HONEST — no natural invariant) ────────────

@F f_lattice_fit := "lattice-fit-on-intimate-cleansing" :: governance [required deny:write]
  pattern = "Deriving cleanser pH, microbial-suppression %, 'natural ingredient %', safety %, ingredient counts, or any efficacy/composition figure FROM the n=6 lattice (σ / τ / φ / J₂ / sopfr / n=6 arithmetic)."
  why = "The pre-rewrite tape did exactly this (e.g. '미생물 억제 96% = 2σ·τ', '임상 안전성 99.9% = 1-1/σ³'); florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid it."
  remedy = "Ground every biology/chemistry/hygiene claim in the real literature cited in this tape's @X entries via |> verified-by. The lattice is NOT a derivation tool here."

@N n6_honest_stance := "intimate cleansing has no natural n=6 invariant" :: note [required]
  text = "Stated plainly: male intimate skin cleansing exposes NO natural n=6 invariant. Skin-surface pH, surfactant irritancy, microbiome composition, and contact-dermatitis risk are governed by dermatology, surfactant chemistry, and microbial ecology — none are lattice-constrained, and none of the numbers in this tape are σ/τ/φ/J₂-derived. Per LATTICE_POLICY g1/g2 + lattice-as-tool, the n=6 lattice is explicitly DECLINED as a derivation tool here (observation-not-derivation). This is the corrective for the audited pre-rewrite lattice-tautology violation (see MENS-INTIMATE-CLEANSER.log.tape)."

# ── §7 Verifiable predictions (real, falsifiable — NOT lattice) ──────

@D tp_1 := "TP-1 SLS is more irritating than mild syndet" :: prediction [ok]
  claim = "In standardized irritation assays, an SLS-based wash produces greater barrier disruption / irritation than a pH-balanced mild syndet or amphoteric system at comparable use conditions."
  falsifier = "If controlled testing shows SLS is no more irritating than a mild syndet on skin, [@chem_surfactant_irritancy] is wrong."
  source = "[@x_ananthapadmanabhan_2004]"

@D tp_2 := "TP-2 alkaline soap perturbs skin-surface pH" :: prediction [ok]
  claim = "Washing with high-pH true soap transiently raises skin-surface pH above the natural acidic baseline, whereas a pH-balanced syndet shifts it far less."
  falsifier = "If alkaline soap leaves skin-surface pH unchanged versus a pH-balanced cleanser, [@bio_acid_mantle] / [@lim_acid_mantle] is wrong."
  source = "[@x_lambers_2006]"

@D tp_3 := "TP-3 antiseptic over-washing worsens, not improves, healthy-skin balance" :: prediction [ok]
  claim = "Routine antiseptic/harsh washing of healthy occluded genital skin is associated with irritant dermatitis / dysbiotic overgrowth rather than benefit; reducing harsh washing is a recognized management step for irritant balanitis."
  falsifier = "If routine antiseptic washing of healthy genital skin is shown to improve outcomes over gentle non-antiseptic washing, [@micro_overwash_harm] / [@lim_cannot_sterilize] is wrong."
  source = "[@x_edwards_2014]"

# ── §8 Cross-links ───────────────────────────────────────────────────

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic / lint verification shells out to hexa-bio)"

# ── §9 External citations (real literature — author/era anchored) ────

@X x_lambers_2006 := "Lambers H et al 2006" :: literature [active]
  ref = "Lambers H, Piessens S, Bloem A, Pronk H, Finkel P. Natural skin surface pH is on average below 5, which is beneficial for its resident flora. Int J Cosmet Sci 2006;28:359–370."
  note = "Primary source for the natural skin-surface pH (~4.7 on average, below 5) and its benefit for resident flora — basis for [@bio_acid_mantle] / [@lim_acid_mantle]."

@X x_ali_yosipovitch_2013 := "Ali SM, Yosipovitch G 2013" :: literature [active]
  ref = "Ali SM, Yosipovitch G. Skin pH: from basic science to basic skin care. Acta Derm Venereol 2013;93:261–267."
  note = "Review of skin pH, the acid mantle, barrier homeostasis, and cleanser-pH effects — used qualitatively; no numeric value taken beyond the acidic-band statement."

@X x_ananthapadmanabhan_2004 := "Ananthapadmanabhan KP et al 2004" :: literature [active]
  ref = "Ananthapadmanabhan KP, Moore DJ, Subramanyan K, Misra M, Meyer F. Cleansing without compromise: the impact of cleansers on the skin barrier and the technology of mild cleansing. Dermatol Ther 2004;17(Suppl 1):16–25."
  note = "Surfactant–protein/–lipid interaction, SLS irritancy, mild-syndet technology, and the mildness↔detergency trade-off — basis for [@chem_surfactant_irritancy] / [@chem_cleansing_tradeoff] / [@lim_mildness_detergency]. Used qualitatively."

@X x_zhai_maibach_2002 := "Zhai H, Maibach HI 2002" :: literature [active]
  ref = "Zhai H, Maibach HI. Occlusion vs. skin barrier function (review of regional skin permeability and occlusion-enhanced percutaneous penetration/irritation). Skin Res Technol 2002;8:1–6. (Regional permeability + occlusion effects underpinning the thin-occluded-genital-skin reactivity statement.)"
  note = "Cited for the principle that occluded / thinner skin shows enhanced permeability and irritation potential — qualitative basis for [@bio_skin_structure] / [@risk_contact_dermatitis]. Maibach group, early-2000s regional-permeability/occlusion literature; exact volume detail anchored by author/era, not fabricated."

@X x_edwards_2014 := "Edwards SK et al — balanitis guidance 2014" :: literature [active]
  ref = "Edwards SK et al. (BASHH / European) guideline on the management of balanoposthitis, c.2014. Int J STD AIDS / J Eur Acad Dermatol Venereol. (Standard clinical guidance: irritant/over-washing and antiseptic overuse as causes of balanitis; gentle non-antiseptic washing and avoidance of irritants as first-line hygiene advice; symptomatic disease is clinician-managed.)"
  note = "Clinical-guideline anchor for [@micro_overwash_harm] / [@lim_cannot_sterilize] / [@scope_disclaimer]. Named by guideline lineage and era; specific journal/volume deliberately not asserted to avoid fabricating citation detail — claims used qualitatively only."
