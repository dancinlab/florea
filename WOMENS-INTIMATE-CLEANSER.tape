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
# WOMENS-INTIMATE-CLEANSER.tape — architecture-current (editable per v1.2)
# Event history → WOMENS-INTIMATE-CLEANSER.log.tape sibling
# REWRITTEN 2026-05-15: was a lattice-tautology .md→.tape migration stub;
# now a real vulvovaginal-hygiene-science knowledge SSOT (see
# WOMENS-INTIMATE-CLEANSER.log.tape audit + supersede events).
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "womens-intimate-cleanser" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · women's intimate (vulvar) cleanser — consumer-hygiene knowledge SSOT grounded in vulvovaginal physiology & microbiome science"
  brief = "external VULVAR cleansing only · the VAGINA is self-cleaning and must not be washed/douched · real anatomy + microbiome + harm evidence · n=6 not used as derivation"
  parent = "dancinlab/florea"
  prior-parent = "dancinlab/hexa-bio (migrated 2026-05-15 per DECOMPOSITION_PLAN.md)"
  scope-rewritten = "2026-05-15 — was a lattice-tautology stub (generic 'per-domain substrate · n=6 mapping' brief; @D row_* pH/efficacy numbers derived from σ/τ/φ; zero science). Rewritten to real hygiene science with cited literature (see WOMENS-INTIMATE-CLEANSER.log.tape audit_governance_honesty + rewrite_real_science)."
  sibling-log = "WOMENS-INTIMATE-CLEANSER.log.tape"
  scope = "in-silico consumer-hygiene knowledge SSOT · physiology/microbiome survey · NOT a marketed product efficacy sheet · NOT medical advice"

@N scope_disclaimer := "consumer-hygiene scope, not medical advice" :: note [required]
  text = "This tape is a consumer-hygiene KNOWLEDGE SSOT, NOT medical advice and NOT a product efficacy claim. An intimate cleanser is a cosmetic external-skin wash; it does NOT diagnose, prevent, or treat bacterial vaginosis (BV), vulvovaginal candidiasis (thrush), trichomoniasis, sexually transmitted infections, or any vulvovaginal disease. Persistent abnormal discharge, odor, itching, pain, bleeding, or any genitourinary symptom requires evaluation by a qualified clinician — a wash is not a substitute. Nothing here asserts a therapeutic effect."

# ── §1 Anatomy & physiology — VULVA vs VAGINA (the load-bearing distinction) ─

@D anat_vulva := "the VULVA is external skin — washable externally" :: physiology [ok]
  what = "The vulva is the EXTERNAL genital region: mons pubis, labia majora/minora, clitoral hood, and the vestibule. It is keratinized/partly keratinized skin and mucocutaneous tissue, exposed to sweat, urine, and the environment."
  ph = "Vulvar skin surface pH is mildly acidic, reported in roughly the ~3.8–5.0 range (skin-surface measurements; somewhat higher and more variable than the vaginal lumen, and influenced by site, occlusion, sweat, and hygiene)."
  cleansing-relevance = "Because it is external skin, the vulva CAN be gently cleansed externally with water or a mild, low-irritation wash — this is the only region an 'intimate cleanser' legitimately addresses."
  |> "[@x_lynch_2017]"

@D anat_vagina := "the VAGINA is internal mucosa — self-cleaning, do NOT wash internally" :: physiology [ok]
  what = "The vagina is an INTERNAL fibromuscular canal lined by non-keratinized stratified squamous mucosa. It is not skin and is not meant to be externally accessed by cleansing products."
  ph = "The healthy reproductive-age vaginal lumen is strongly acidic, typically about pH ~3.5–4.5, maintained by resident lactobacilli."
  self-cleaning = "The vagina is SELF-CLEANING: cyclical epithelial turnover, glycogen-fed Lactobacillus fermentation, and physiological discharge continuously clear the lumen. It does not require — and is harmed by — internal washing, douching, or intravaginal 'cleansers'."
  hard-boundary = "An intimate cleanser must remain EXTERNAL (vulvar). Internal/vaginal application is outside legitimate hygiene and is addressed as a harm in [@harm_douching] / [@lim_douching_harm]."
  |> "[@x_lynch_2017]"
  |> "[@x_amabebe_2018]"

@D phys_estrogen_glycogen := "estrogen → glycogen → lactic acid drives the acidic vaginal environment" :: mechanism [ok]
  axis = "Estrogen thickens the vaginal epithelium and drives glycogen accumulation; glycogen (via host and microbial breakdown) feeds Lactobacillus, which ferments it to LACTIC ACID, producing and sustaining the low vaginal pH."
  consequence = "The acidic, lactic-acid-rich milieu suppresses many non-resident and pathogenic organisms — this is an endogenous, self-regulating defense, not something a wash creates or improves."
  life-stage = "Estrogen-dependent: the system is markedly different pre-puberty and post-menopause (lower estrogen → less glycogen → higher pH, different flora); this tape's quantitative ranges describe the reproductive-age state."
  |> "[@x_amabebe_2018]"
  |> "[@x_odoherty_2014]"

# ── §2 The vaginal microbiome (real microbiology) ─────────────────────

@D micro_lactobacillus := "Lactobacillus-dominated community is the healthy reproductive-age state" :: microbiology [ok]
  core = "In most healthy reproductive-age women the vaginal microbiota is dominated by Lactobacillus species (commonly L. crispatus, L. iners, L. gasseri, L. jensenii), which produce lactic acid (and, for some species, hydrogen peroxide / bacteriocins) and keep the lumen acidic and low-diversity."
  community-state-types = "Ravel et al. 2011 described community state types (CSTs): several Lactobacillus-dominated CSTs plus a more diverse, lower-Lactobacillus CST; composition varies between healthy individuals and over time, so 'healthy' is a range of states, not one fixed profile."
  l-crispatus-note = "L. crispatus dominance is generally associated with a stable, strongly acidic, protective state; L. iners-dominated communities are more transitional. Stated qualitatively — exact protective magnitudes are individual- and context-dependent."
  |> "[@x_ravel_2011]"

@D micro_bv := "bacterial vaginosis = loss of lactobacilli + raised pH + diverse anaerobes" :: microbiology [ok]
  what = "Bacterial vaginosis (BV) is a dysbiosis: depletion of protective lactobacilli, OVERGROWTH of diverse anaerobes (e.g. Gardnerella vaginalis and associated organisms; often a polymicrobial biofilm), and a RISE in vaginal pH above ~4.5, frequently with a thin discharge and an amine ('fishy') odor."
  diagnosis = "BV is diagnosed clinically/microscopically — Amsel criteria (clinical: discharge, pH >4.5, positive amine/whiff test, clue cells) and Nugent score (Gram-stain morphotype scoring). Diagnosis is a clinician/lab task, not a home or product judgement."
  not-product-scope = "A cleanser does NOT diagnose or treat BV. BV management is clinical (e.g. clinician-directed antimicrobial therapy); see [@scope_disclaimer] and [@lim_not_therapeutic]."
  |> "[@x_amsel_1983]"
  |> "[@x_nugent_1991]"

@D micro_candida := "vulvovaginal candidiasis is a distinct fungal condition (not BV, not a hygiene defect)" :: microbiology [ok]
  what = "Vulvovaginal candidiasis ('thrush') is symptomatic overgrowth of Candida (most often C. albicans) — typically itch, vulvar irritation, and a thick discharge — and is mechanistically DIFFERENT from BV (a fungal overgrowth, not anaerobic dysbiosis). Unlike BV, vaginal pH is often near-normal."
  not-product-scope = "It is not caused by 'insufficient washing' and is not treated by a cleanser; symptomatic candidiasis is a clinical diagnosis with antifungal management. Distinguishing BV vs candidiasis vs other causes requires a clinician."
  |> "[@x_sobel_2007]"

# ── §3 Cleansing principles (what a legitimate intimate cleanser is) ──

@D clean_external_only := "external vulvar cleansing only — never internal/vaginal" :: principle [ok]
  rule = "Legitimate intimate hygiene = gentle EXTERNAL washing of the vulva with water or a mild product, plus normal bathing. The vagina is self-cleaning ([@anat_vagina]) and must not be internally washed, douched, or 'rinsed clean'."
  why = "Internal cleansing removes the protective lactobacilli and lactic-acid milieu the body maintains itself; the correct hygiene posture is to PROTECT the endogenous system, not to add a step to it."
  |> "[@x_amabebe_2018]"

@D clean_ph_target := "if pH-adjusted, target the VULVA (~5), not the vagina" :: principle [ok]
  rule = "A mild external wash may be formulated mildly acidic to be compatible with vulvar SKIN (skin-surface pH is in the mildly acidic range, roughly ~5). It should NOT claim to 'restore', 'balance', or 'set' VAGINAL pH — vaginal pH (~3.5–4.5) is generated internally by lactobacilli ([@phys_estrogen_glycogen]) and is not a target an external wash can or should control."
  honest-framing = "'pH-balanced for the vulva' is a skin-compatibility statement, not a vaginal-health claim. Conflating the two is the core mislabeling this tape guards against."
  |> "[@x_lynch_2017]"
  |> "[@x_amabebe_2018]"

@D clean_avoid_disruptors := "fragrance, antiseptics, and douching disrupt the system" :: principle [ok]
  rule = "Harsh surfactants, added fragrance/perfume, antiseptic/antibacterial agents, and any douching DISRUPT the vulvar skin barrier and/or the vaginal lactobacilli and are discouraged for routine intimate hygiene."
  preferred = "Gentle, low-irritant, fragrance-free, external-only washing (often plain water suffices) is the conservative, evidence-aligned default. A product's value is in being MILD and NON-DISRUPTIVE, not in an active 'cleansing' or 'antibacterial' effect."
  |> "[@x_chen_2017]"
  |> "[@x_amabebe_2018]"

# ── §4 Strong-evidence harm — douching ────────────────────────────────

@D harm_douching := "douching is epidemiologically associated with harm" :: harm-evidence [ok]
  finding = "Vaginal douching is repeatedly associated in epidemiological studies with adverse reproductive-tract outcomes — including bacterial vaginosis, pelvic inflammatory disease (PID), and other adverse gynecologic/obstetric associations. Mechanistically consistent: douching flushes out protective lactobacilli and the acidic milieu."
  causality-honesty = "These are predominantly observational associations (with reverse-causation and confounding caveats), but the direction and consistency of evidence, plus the clear mechanism, support a STRONG recommendation AGAINST douching. No protective benefit of douching is established."
  product-implication = "An intimate product that encourages internal use or 'deep cleansing' is acting against this evidence; legitimate products are external-only ([@clean_external_only])."
  |> "[@x_brotman_2008]"
  |> "[@x_cottrell_2010]"

# ── §5 Real-limits anchors (LATTICE_POLICY g1 — real-limits-first) ────

@D lim_vaginal_self_regulation := "the vaginal ecosystem is self-regulating" :: real-limit [ok required]
  wall = "HARD WALL (physiological)"
  statement = "The reproductive-age vaginal lumen maintains its acidic, Lactobacillus-dominated state endogenously (estrogen→glycogen→lactic acid; epithelial turnover; physiological discharge). An external or internal consumer product cannot 'improve', 'optimize', or 'rebalance' this self-regulating internal ecosystem."
  consequence = "The honest ceiling of an intimate cleanser is to be a MILD, NON-DISRUPTIVE external wash — its best case is doing no harm to a system it cannot legitimately enhance."

@D lim_douching_harm := "internal washing/douching is harmful, not beneficial" :: real-limit [ok required]
  wall = "HARD WALL (epidemiological + mechanistic)"
  statement = "Internal washing/douching is associated with BV, PID, and adverse reproductive outcomes and has no established benefit. Therefore an intimate product cannot truthfully be positioned for internal/vaginal use or as ecosystem-improving."
  consequence = "Internal use is contraindicated; the product category is bounded to external vulvar hygiene only ([@harm_douching])."

@D lim_ph_target_vulva := "product pH must match the VULVA, not the vagina" :: real-limit [ok required]
  wall = "HARD WALL (target-mismatch)"
  statement = "An external wash contacts vulvar SKIN (mildly acidic, roughly ~5), not the vaginal lumen (~3.5–4.5, internally generated). A product cannot set vaginal pH and must not claim to; the only honest pH claim is skin-compatibility with the vulva."
  consequence = "Any 'restores vaginal pH' / 'balances intimate pH internally' claim is a target-mismatch error and a likely unsupported-efficacy claim."

@D lim_not_therapeutic := "a cleanser is not a therapeutic for BV / candidiasis / STIs" :: real-limit [ok required]
  wall = "HARD WALL (scope)"
  statement = "BV, vulvovaginal candidiasis, trichomoniasis, and STIs are clinical diagnoses with clinical management. A cosmetic wash neither diagnoses nor treats them; symptomatic disease requires a clinician."
  consequence = "Efficacy framing must stay within 'mild external cleansing / does not disrupt'; any disease-prevention or disease-treatment claim is out of scope and unsupported ([@scope_disclaimer])."

# ── §6 n=6 lattice stance (HONEST — no natural invariant) ─────────────

@F f_lattice_fit := "lattice-fit-on-vulvovaginal-hygiene" :: governance [required deny:write]
  pattern = "Deriving pH targets, Lactobacillus-retention percentages, 'natural-ingredient %', safety %, ingredient counts, or any efficacy/quality number FROM the n=6 lattice (σ / τ / φ / J₂ / sopfr / n=6)."
  why = "The pre-rewrite tape did exactly this (row_ph_0: pH 0.1 from a 1/σ identity; row_lactobacillus_1: 95% retention from 'PF 정상 연결'). florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid claiming a verb 'works because n=6' without the underlying biology/chemistry."
  remedy = "Cite the real vulvovaginal-physiology / microbiome / epidemiology literature in this tape's @X entries. The lattice is not a derivation tool here."

@N n6_honest_stance := "vulvovaginal hygiene has no natural n=6 invariant" :: note [required]
  text = "Stated plainly: vulvovaginal hygiene exposes NO natural n=6 invariant (this is an observation-not-derivation stance). Vaginal pH, Lactobacillus dominance, BV diagnostic thresholds, and ingredient/formulation choices are governed by biology, chemistry, and epidemiology — not by σ/τ/φ/J₂ lattice arithmetic. Per LATTICE_POLICY g1/g2 + lattice-as-tool, the n=6 lattice is DECLINED as a derivation tool here. This is the corrective for the audited pre-rewrite violation (see WOMENS-INTIMATE-CLEANSER.log.tape audit_governance_honesty)."

# ── §7 Verifiable predictions (real, falsifiable — NOT lattice) ───────

@D tp_1 := "TP-1 douching ↔ dysbiosis" :: prediction [ok]
  claim = "Across populations, vaginal douching is associated with higher prevalence/incidence of bacterial vaginosis and related adverse reproductive outcomes than non-douching."
  falsifier = "If well-controlled studies show douching is neutral or protective against BV/PID, [@harm_douching] / [@lim_douching_harm] are wrong."
  source = "[@x_brotman_2008]"

@D tp_2 := "TP-2 Lactobacillus ↔ low pH" :: prediction [ok]
  claim = "Healthy reproductive-age vaginal communities dominated by Lactobacillus correspond to a low (~<4.5) lumen pH; loss of lactobacilli corresponds with a pH rise above ~4.5 (BV-consistent)."
  falsifier = "If Lactobacillus-dominated communities routinely show pH >4.5 with no dysbiosis, the estrogen→glycogen→lactic-acid model ([@phys_estrogen_glycogen]) is wrong."
  source = "[@x_ravel_2011]"

@D tp_3 := "TP-3 external product ≠ ecosystem improver" :: prediction [ok]
  claim = "An external vulvar wash, used externally, does not measurably 'improve' the internal vaginal microbiome beyond not disrupting it; the binding outcome is harm-avoidance, not enhancement."
  falsifier = "If a controlled study shows an external cosmetic wash reproducibly improves the internal vaginal microbiome of healthy women, [@lim_vaginal_self_regulation] is wrong."

# ── §8 Cross-links ────────────────────────────────────────────────────

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §9 External citations (real, landmark literature) ─────────────────

@X x_ravel_2011 := "Ravel J et al 2011" :: literature [active]
  ref = "Ravel J, Gajer P, Abdo Z, et al. Vaginal microbiome of reproductive-age women. Proc Natl Acad Sci USA 2011;108 Suppl 1:4680–4687. (Defined Lactobacillus-dominated community state types.)"

@X x_amsel_1983 := "Amsel R et al 1983" :: literature [active]
  ref = "Amsel R, Totten PA, Spiegel CA, Chen KCS, Eschenbach D, Holmes KK. Nonspecific vaginitis: diagnostic criteria and microbial and epidemiologic associations. Am J Med 1983;74:14–22. (Amsel clinical criteria for bacterial vaginosis.)"

@X x_nugent_1991 := "Nugent RP et al 1991" :: literature [active]
  ref = "Nugent RP, Krohn MA, Hillier SL. Reliability of diagnosing bacterial vaginosis is improved by a standardized method of Gram stain interpretation. J Clin Microbiol 1991;29:297–301. (Nugent Gram-stain scoring for BV.)"

@X x_brotman_2008 := "Brotman RM et al 2008" :: literature [active]
  ref = "Brotman RM, Klebanoff MA, Nansel TR, et al. A longitudinal study of vaginal douching and bacterial vaginosis incidence. Am J Epidemiol 2008;168:188–196. (Epidemiologic association of douching with BV; see also the broader douching-harm literature, Brotman/Klebanoff group, 2000s.)"

@X x_amabebe_2018 := "Amabebe E, Anumba DOC 2018" :: literature [active]
  ref = "Amabebe E, Anumba DOC. The vaginal microenvironment: the physiology and role of lactobacilli in maintaining the acidic, low-diversity, protective state. Front Med (Lausanne) 2018;5:181. (Review — lactic-acid/pH physiology; secondary review named by primary authors/era where exact volume detail is uncertain.)"

@X x_lynch_2017 := "Lynch / vulvar dermatology reference" :: literature [active]
  ref = "Standard vulvar dermatology / anatomy reference establishing the vulva as external mucocutaneous skin with a mildly acidic surface pH and external-only cleansing relevance (vulvar dermatology literature, Lynch & Edwards lineage; named by author/era — no fabricated volume/page numbers asserted)."

@X x_odoherty_2014 := "estrogen–glycogen–vaginal-flora physiology reference" :: literature [active]
  ref = "Reproductive-physiology literature establishing the estrogen→epithelial-glycogen→Lactobacillus→lactic-acid axis and its life-stage (pre-pubertal / reproductive / post-menopausal) dependence (named by topic/era; primary numeric detail kept qualitative — no fabricated citation specifics)."

@X x_sobel_2007 := "Sobel JD 2007" :: literature [active]
  ref = "Sobel JD. Vulvovaginal candidiasis. Lancet 2007;369:1961–1971. (Review — clinical distinction of vulvovaginal candidiasis from bacterial vaginosis.)"

@X x_cottrell_2010 := "Cottrell BH 2010" :: literature [active]
  ref = "Cottrell BH. An updated review of evidence to discourage douching. MCN Am J Matern Child Nurs 2010;35:102–107. (Evidence synthesis discouraging vaginal douching; corroborates the douching-harm association.)"

@X x_chen_2017 := "intimate-hygiene practice / mild-cleansing reference" :: literature [active]
  ref = "Women's intimate-hygiene practice literature supporting gentle, fragrance-free, external-only vulvar cleansing and discouraging harsh/antiseptic/internal products (named by topic/era; quantitative specifics kept qualitative — no fabricated citation detail)."
