#!/usr/bin/env tape

# ══════════════════════════════════════════════════════════════
# ANDROGENETIC-ALOPECIA.tape — architecture-current (editable per v1.2)
# Event history → ANDROGENETIC-ALOPECIA.log.tape sibling
# Split out of HAIR-REGENERATION.tape 2026-05-15 (male-pattern primary)
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "androgenetic-alopecia" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · androgenetic alopecia (AGA) — male-pattern primary, female-pattern as §7"
  brief = "DHT-driven follicular miniaturization · evidence-based pharmacology · real-limits anchored · n=6 NOT used as a derivation (honest)"
  parent = "dancinlab/florea"
  split-from = "HAIR-REGENERATION.tape (2026-05-15 — was a lattice-tautology stub conflating AGA + regeneration tech; see HAIR-REGENERATION.log.tape audit)"
  sibling-log = "ANDROGENETIC-ALOPECIA.log.tape"
  scope = "in-silico knowledge SSOT · NOT medical advice / not a treatment protocol / not a clinical claim"

@N scope_disclaimer := "clinical-scope honesty" :: note [required]
  text = "This tape is an evidence-summary SSOT for an in-silico cosmetic substrate. Drug doses/efficacy figures are paraphrased from published clinical literature for modeling context only — they are NOT prescribing guidance. Finasteride/dutasteride are prescription drugs with sexual/teratogenic risk; real use requires a licensed clinician."

@D dx_definition := "what AGA is" :: domain [ok]
  disease = "Androgenetic alopecia — the most common cause of hair loss; progressive, patterned, non-scarring."
  male-phenotype = "남성형 탈모 (male-pattern): frontotemporal recession + vertex thinning. THIS tape's primary axis."
  female-phenotype = "여성형 탈모 (female-pattern): diffuse central thinning, frontal hairline usually spared. Covered in §7."
  same-disease = "Male-pattern and female-pattern are the two phenotypes of ONE disease (AGA) — same androgen/genetic mechanism, NOT separate diseases."
  not-this-tape = "Alopecia areata (autoimmune · JAK-i), telogen effluvium (systemic/stress), cicatricial alopecia (scarring) are mechanistically distinct → out of scope."

# ── §1 Mechanism (DHT → miniaturization) ──────────────────────────────

@D mech_androgen_axis := "testosterone → DHT → AR" :: mechanism [ok]
  step1 = "Testosterone → 5α-reductase → dihydrotestosterone (DHT). DHT has ~5× androgen-receptor affinity vs testosterone."
  step2 = "DHT binds androgen receptor (AR) in dermal-papilla cells of genetically susceptible follicles."
  step3 = "→ progressive follicular miniaturization: terminal hair → vellus-like; anagen (growth) phase shortens; telogen fraction & shedding rise; shaft diameter shrinks each cycle."
  step4 = "Occipital/parietal donor follicles are androgen-INsensitive → 'donor dominance' (basis of transplantation)."
  |> "[@x_orentreich_1959] (donor dominance, 1959)"

@D mech_5ar_isoenzymes := "5α-reductase isoenzymes" :: mechanism [ok]
  type-I = "SRD5A1 — skin/sebaceous, liver. Minor scalp contribution."
  type-II = "SRD5A2 — scalp hair follicle, prostate, genital skin. Dominant in scalp AGA."
  type-III = "SRD5A3 — exists (glycosylation role); clinically minor for AGA. Its existence is WHY 'there are 2 isoenzymes' is a simplification — see [@f_lattice_fit]."
  therapeutic-hook = "finasteride = selective type-II inhibitor; dutasteride = dual type-I+II inhibitor."

@D mech_genetics := "polygenic heritability" :: mechanism [ok]
  heritability = "High (~80% twin-study estimates)."
  strongest-locus = "AR/EDA2R on Xq11-q12 (X-linked → maternal-line contribution to risk)."
  autosomal = "20p11 (near PAX1/FOXA2) + >350 risk loci identified in large GWAS."
  implication = "Genotype is currently NON-editable; all therapy manages the phenotype, none cures the predisposition. See [@lim_genetic]."
  |> "[@x_heilmann_2017] · [@x_hagenaars_2017]"

# ── §2 Classification & epidemiology ──────────────────────────────────

@D cls_norwood := "Hamilton–Norwood scale (men)" :: classification [ok]
  scale = "Hamilton 1951 → Norwood 1975. Stages I–VII (+ type-A variant: anterior-to-posterior without distinct vertex)."
  stage-count = "VII — explicitly NOT 6. Do not lattice-fit (see [@f_lattice_fit])."
  use = "Staging guides therapy expectation: early (II–III) = best medical response; VI–VII = transplant-dominant, native regrowth limited."
  |> "[@x_hamilton_1951] · [@x_norwood_1975]"

@D cls_female := "female-pattern scales" :: classification [ok]
  ludwig = "Ludwig I–III (central density loss, hairline spared)."
  sinclair = "Sinclair 1–5 (clinical photographic grade)."
  olsen = "Olsen 'Christmas-tree' frontal accentuation pattern."
  note = "Detailed female-pattern management in §7; mechanism shared with male-pattern but androgen dependence is less uniform."

@D epi_prevalence := "epidemiology" :: domain [ok]
  men = "~30–50% of men show visible AGA by age 50; prevalence rises monotonically with age; onset can begin post-puberty."
  ancestry = "Historically highest in European-ancestry men; lower reported rates in East-Asian / African populations (rising with ascertainment)."
  honesty = "Figures are population ranges from epidemiology literature, not a lattice-derived constant."

# ── §3 Evidence-based pharmacology (real efficacy + citations) ────────

@D rx_minoxidil_topical := "topical minoxidil 2%/5%" :: therapy [ok recommended]
  moa = "Prodrug — activated by follicular sulfotransferase (SULT1A1) to minoxidil sulfate; K_ATP-channel opener; prolongs anagen, enlarges follicles. SULT1A1 activity predicts response (responder variability)."
  efficacy = "5% > 2% in men; stabilizes loss and yields partial cosmetic regrowth in roughly half of users over 4–12 mo. Continuous use required — benefit reverses on cessation."
  ae = "Scalp irritation, initial telogen shedding (weeks 2–8), facial hypertrichosis (esp. solution)."
  |> "[@x_olsen_2002]"

@D rx_finasteride := "oral finasteride 1 mg/day" :: therapy [ok recommended]
  moa = "Selective SRD5A2 inhibitor → scalp DHT ↓ ~64%, serum DHT ↓ ~68–70%."
  efficacy = "Landmark 2-yr RCT: increased hair count, ~83% with no further loss at 2 yr, ~48% visible improvement at 5 yr (Finasteride Male Pattern Hair Loss Study Group). Best in vertex & mid-scalp; less at frontal hairline."
  ceiling = "Cannot exceed type-II suppression — residual type-I DHT escapes. See [@lim_dht_ceiling]."
  ae = "Sexual AE (libido↓ / ED / ejaculatory) ~1.8–3.8% vs ~1.3–2.1% placebo; mostly reversible on cessation; 'post-finasteride syndrome' causality unproven. Teratogenic — category-X for female fetus exposure."
  |> "[@x_kaufman_1998]"

@D rx_dutasteride := "oral dutasteride 0.5 mg/day" :: therapy [ok recommended]
  moa = "Dual SRD5A1+2 inhibitor → serum DHT ↓ > 90%."
  efficacy = "Superior hair-count gain vs finasteride in head-to-head RCT. Approved for AGA in South Korea & Japan; off-label elsewhere."
  ae = "Similar class profile to finasteride; longer half-life (≈5 wk) → prolonged washout; same teratogenic precaution."
  |> "[@x_olsen_2006] · [@x_gubelin_2014]"

@D rx_oral_minoxidil := "low-dose oral minoxidil (LDOM) 0.25–5 mg" :: therapy [ok recommended]
  status = "Emerging mainstream adjunct/alternative (esp. where topical adherence is poor)."
  efficacy = "Dose-dependent hair gain; widely adopted clinically post-2020."
  ae = "Hypertrichosis (dose-dependent), fluid retention, postural symptoms, tachycardia; cardiac caution."
  |> "[@x_randolph_tosti_2021]"

@D rx_adjuncts := "procedural adjuncts" :: therapy [ok optional]
  microneedling = "Wound-healing / Wnt-β-catenin activation; boosts topical-minoxidil response (Dhurat RCT)."
  prp = "Platelet-rich plasma intradermal — PDGF/VEGF/IGF to dermal papilla; meta-analyses show modest density gain; protocol heterogeneity → lower evidence grade."
  lllt = "Low-level laser 650–660 nm — FDA-cleared devices; modest photobiomodulation effect."
  topical-5ari = "Topical finasteride/dutasteride — comparable local effect with lower systemic DHT impact (growing evidence)."
  |> "[@x_dhurat_2013]"

@D rx_transplant := "hair transplantation (FUT / FUE)" :: therapy [ok recommended]
  principle = "Redistributes androgen-insensitive donor (occipital) follicles into recipient area — donor dominance ([@x_orentreich_1959])."
  limit = "REDISTRIBUTION, not addition: donor reservoir is finite; native non-transplanted hair keeps miniaturizing → concurrent medical therapy is standard. See [@lim_donor_finitude]."
  definitive-for = "Established loss (Norwood IV–VI) with adequate donor density."

@D rx_investigational := "investigational pathways" :: therapy [draft]
  pgd2 = "PGD2/GPR44(CRTH2) axis — PGD2 elevated in bald scalp; setipiprant trialed (Garza et al.)."
  others = "Wnt/β-catenin agonists, SCUBE3, exosome/secretome, topical antiandrogens. JAK inhibitors are for ALOPECIA AREATA, not AGA — do not conflate."
  status = "Not standard of care as of knowledge cutoff; listed for completeness, not endorsed."
  |> "[@x_garza_2012]"

# ── §3b Head-to-head modality comparison (qualitative, source-grounded) ─

@D cmp_axis := "comparison axis definition" :: comparison [ok]
  dimensions = "Each modality below is compared on: (1) mechanism target, (2) direction/relative magnitude of DHT change, (3) evidence grade, (4) durability/reversibility, (5) signature adverse event."
  honesty = "Magnitudes are QUALITATIVE (direction + relative ordering + cited landmark trial), not lattice-derived constants. Exact percentages live only where a single landmark RCT reported them (§3) and are paraphrased, not re-derived."
  ordering-claim = "On serum DHT suppression depth the landmark ordering is: dutasteride > finasteride ≫ minoxidil (no direct DHT effect) — established by the dutasteride-vs-finasteride head-to-head."
  |> "[@x_olsen_2006] · [@x_gubelin_2014]"

@D cmp_finasteride := "finasteride — comparison row" :: comparison [ok]
  target = "Selective SRD5A2 (scalp-dominant isoenzyme)."
  dht-change = "Large reduction in scalp & serum DHT, but bounded — type-I escape leaves residual DHT (see [@lim_dht_ceiling])."
  evidence-grade = "HIGHEST for oral AGA monotherapy: large multicentre placebo-controlled RCT with multi-year follow-up (Kaufman/Finasteride Male Pattern Hair Loss Study Group)."
  durability = "Suppressive; benefit reverses on cessation (see [@lim_adherence]); short half-life → fast washout."
  signature-ae = "Sexual dysfunction (libido/erectile/ejaculatory), low absolute excess vs placebo, mostly reversible; teratogenic (female-fetus category-X)."
  |> "[@x_kaufman_1998]"

@D cmp_dutasteride := "dutasteride — comparison row" :: comparison [ok]
  target = "Dual SRD5A1+SRD5A2 (closes the type-I escape route finasteride leaves open)."
  dht-change = "Deeper serum DHT suppression than finasteride; superior hair-count gain in the direct head-to-head RCT."
  evidence-grade = "HIGH: randomized active-controlled (vs finasteride) + dose-ranging placebo-controlled trial; regulatory approval for AGA is region-limited (South Korea, Japan), off-label elsewhere."
  durability = "Suppressive; long elimination half-life (≈weeks) → prolonged washout, slower relapse onset but same eventual dependence."
  signature-ae = "Class-equivalent sexual AE profile; same teratogenic precaution; longer washout extends exposure window."
  |> "[@x_olsen_2006] · [@x_gubelin_2014]"

@D cmp_minoxidil := "minoxidil (topical / LDOM) — comparison row" :: comparison [ok]
  target = "NOT an antiandrogen — K_ATP-channel opener; anagen prolongation; effect is downstream/parallel to the DHT axis."
  dht-change = "None — does not alter DHT; complementary mechanism, hence routinely combined with a 5ARI."
  evidence-grade = "HIGH for topical (5%>2% dose-response RCT, Olsen 2002); LDOM evidence is review/cohort-grade and rapidly maturing (Randolph & Tosti 2021)."
  durability = "Suppressive; reverses on cessation; topical response gated by follicular SULT1A1 activity (responder pharmacogenetics — see [@lim_sult1a1])."
  signature-ae = "Topical: irritation, dose-dependent hypertrichosis, transient telogen shedding. LDOM: hypertrichosis, fluid retention, postural/cardiac effects."
  |> "[@x_olsen_2002] · [@x_randolph_tosti_2021]"

@D cmp_transplant := "transplantation — comparison row" :: comparison [ok]
  target = "Mechanically relocates androgen-insensitive donor follicles (donor dominance) — bypasses, does not modify, the DHT axis."
  dht-change = "None — transplanted follicles are intrinsically androgen-resistant; surrounding native follicles keep miniaturizing."
  evidence-grade = "Procedural standard of care for established loss; benefit is anatomical/redistributive, not pharmacodynamic."
  durability = "Transplanted grafts are durable (donor dominance, [@x_orentreich_1959]); finite donor reservoir caps total achievable coverage (see [@lim_donor_finitude])."
  signature-ae = "Surgical: scarring (FUT strip / FUE dot), shock loss, donor depletion if over-harvested; concurrent medical therapy is standard to protect native hair."
  |> "[@x_orentreich_1959]"

@D cmp_synthesis := "comparison synthesis" :: comparison [ok]
  combination-rationale = "5ARI (DHT suppression) + minoxidil (anagen prolongation) + transplant (redistribution) act on non-overlapping mechanisms → additive in practice; this is mechanistic complementarity, not a lattice product."
  no-cure-row = "No row is curative: every pharmacologic modality is suppressive and adherence-bound ([@lim_adherence]); transplant is conservation-bound ([@lim_donor_finitude]). The honest summary is a ceiling, not an invariant."

# ── §4 Real-limits anchors (LATTICE_POLICY g1 — real-limits-first) ────

@D lim_donor_finitude := "donor finitude / no scalable de-novo neogenesis" :: real-limit [ok required]
  wall = "HARD WALL"
  statement = "Adult human scalp does not regenerate new follicles at clinically meaningful scale. Transplantation only redistributes a finite donor pool; it cannot increase total follicle count."
  consequence = "Total achievable coverage is bounded by donor density × recipient area — a conservation constraint, not a lattice value."
  bridge = "De-novo follicular neogenesis is the domain of [@x_hair_regen_sibling] (HAIR-REGENERATION.tape) — and is itself unsolved at human scale."

@D lim_dht_ceiling := "5α-reductase suppression ceiling" :: real-limit [ok required]
  wall = "SOFT WALL"
  statement = "Finasteride plateaus at ≈60–70% scalp DHT reduction (type-I escape). Dutasteride reaches >90% serum DHT reduction but not 100%; complete androgen blockade is not achievable without unacceptable systemic endocrine cost."
  consequence = "Pharmacology slows/halts/partially reverses miniaturization — it does not restore a Norwood-VII scalp to Norwood-I."

@D lim_irreversibility := "fibrotic irreversibility threshold" :: real-limit [ok required]
  wall = "HARD WALL (per-follicle)"
  statement = "Miniaturized-but-viable follicles are rescuable. Follicles past perifollicular fibrosis / stem-cell-pool exhaustion are not. Therapeutic window closes per-follicle as fibrotic conversion completes."
  consequence = "Earlier intervention → larger rescuable fraction. 'Bald for years' regions respond poorly to any medical therapy."

@D lim_genetic := "non-editable polygenic genotype" :: real-limit [ok required]
  wall = "HARD WALL (current tech)"
  statement = "AGA susceptibility is polygenic (>350 loci); not correctable with approved technology. Therapy is phenotype management."

@D lim_adherence := "suppressive-not-curative" :: real-limit [ok required]
  wall = "BEHAVIORAL/ECONOMIC LIMIT"
  statement = "All approved AGA therapy is suppressive. Cessation → loss resumes within ≈6–12 months. Lifelong adherence is the true constraint on real-world outcomes."

@D lim_sult1a1 := "minoxidil responder pharmacogenetics (SULT1A1)" :: real-limit [ok required]
  wall = "BIOLOGICAL LIMIT (host-intrinsic)"
  statement = "Topical minoxidil is a prodrug requiring follicular sulfotransferase SULT1A1 to form active minoxidil sulfate. SULT1A1 enzyme activity varies widely between individuals; low-activity scalps are constitutional poor responders to topical minoxidil regardless of dose or adherence."
  consequence = "A non-trivial fraction of users cannot respond to topical minoxidil for an intrinsic enzymatic reason — not a dosing failure. Oral minoxidil (systemic activation) and 5ARI/transplant routes bypass this particular limit."
  |> "[@x_buhl_1990] · [@x_goren_2014]"

@D lim_type1_escape := "type-I 5α-reductase escape (mechanistic detail of the ceiling)" :: real-limit [ok required]
  wall = "SOFT WALL (pharmacodynamic, mechanistic refinement of [@lim_dht_ceiling])"
  statement = "Finasteride is SRD5A2-selective; cutaneous/sebaceous SRD5A1 (type-I) continues to convert testosterone to DHT, so scalp DHT is reduced but not eliminated. Dual inhibition (dutasteride) closes the type-I route and deepens suppression — yet residual androgen signalling and the systemic-endocrine cost of total blockade still bound the achievable effect."
  consequence = "The DHT-suppression ceiling is not a single number but an isoenzyme-coverage limit: monotherapy depth < dual-inhibition depth < (unreachable) complete blockade. Specializes [@lim_dht_ceiling]."
  |> "[@x_olsen_2006]"

# ── §5 n=6 lattice stance (HONEST — observation, not derivation) ──────

@F f_lattice_fit := "lattice-fit-on-AGA-biology" :: governance [required deny:write]
  pattern = "Deriving AGA efficacy / staging / mechanism counts FROM the n=6 lattice (σ=12, τ=4, φ=2, J₂=24) — e.g. 'regrowth = 90% because σ·(σ-φ)/2'."
  why = "This is exactly the violation the pre-split HAIR-REGENERATION.tape committed (see its .log.tape audit). florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid it."
  remedy = "Cite real biology/clinical sources (this tape's @X entries). Lattice may only be a coincidental OBSERVATION, never a derivation."

@N n6_honest_stance := "AGA has no natural n=6 invariant" :: note [required]
  text = "Stated plainly: androgenetic alopecia exposes NO natural n=6 invariant. Norwood = VII stages (≠6). 5α-reductase has 3 isoenzymes (2 clinically dominant — numerically coincides with φ(6)=2 but this is OBSERVATION ONLY, and type-III's existence makes even '2' a simplification). Treatment modalities count is not lattice-constrained. Per LATTICE_POLICY g1/g2 + lattice-as-tool: the lattice is declined here as a derivation tool. This honesty IS the corrective for the audited HAIR-REGENERATION violation."

# ── §6 Verifiable predictions (real, falsifiable — NOT lattice) ───────

@D tp_1 := "TP-1 finasteride DHT suppression" :: prediction [ok]
  claim = "Oral finasteride 1 mg/day reduces scalp DHT by ≈60–70% (not ~100%)."
  falsifier = "If a properly powered scalp-tissue DHT assay shows finasteride monotherapy routinely >85% scalp DHT reduction, [@lim_dht_ceiling] is wrong."
  source = "[@x_kaufman_1998]"

@D tp_2 := "TP-2 early-stage response gradient" :: prediction [ok]
  claim = "Medical-therapy regrowth fraction is monotonically higher in Norwood II–III than VI–VII (fibrotic-irreversibility gradient)."
  falsifier = "If RCT stratified by Norwood stage shows equal/inverted response, [@lim_irreversibility] is wrong."

@D tp_3 := "TP-3 cessation relapse" :: prediction [ok]
  claim = "Discontinuation of any approved monotherapy → measurable density loss within 6–12 months toward untreated trajectory."
  falsifier = "If a washout cohort retains benefit >24 mo off-therapy, [@lim_adherence] is wrong."

# ── §7 Female-pattern (여성형) — shared mechanism, distinct management ─

@D female_pattern := "female-pattern AGA" :: domain [ok]
  pattern = "Diffuse central/crown thinning; frontal hairline usually preserved (Ludwig/Sinclair)."
  mechanism = "Same AGA disease; androgen dependence less uniform than male-pattern; rule out hyperandrogenism (PCOS), thyroid, iron deficiency, telogen effluvium mimics."
  therapy = "Topical minoxidil (first-line, 2% or 5%); oral antiandrogens (spironolactone, where appropriate) under specialist care; LDOM; finasteride/dutasteride only in specific post-menopausal/specialist contexts (teratogenicity precludes use with pregnancy potential)."
  honesty = "Female-pattern is summarized here, not exhaustively; it is the secondary axis of this tape."

@D female_workup := "female-pattern differential workup" :: domain [ok]
  why = "Female central thinning is NOT presumptively androgenetic — it has more reversible mimics than the male phenotype, so a workup precedes committing to AGA management."
  rule-out-endocrine = "Hyperandrogenism / PCOS: assess hirsutism, acne, menstrual irregularity; the clinical picture (not the lattice) drives whether androgen/PCOS evaluation is indicated."
  rule-out-thyroid = "Thyroid dysfunction (hypo- or hyper-) causes diffuse hair loss that resolves on correction — a treatable confounder, not AGA."
  rule-out-iron = "Iron deficiency / low ferritin is a recognised contributor to telogen shedding in women; identify and correct before attributing loss solely to AGA."
  rule-out-te = "Telogen effluvium (post-partum, illness, crash diet, drug-induced) is diffuse and self-limited — distinguish by history, acuity, and shedding pattern from the slow patterned course of AGA."
  scarring-exclusion = "Exclude frontal fibrosing alopecia / lichen planopilaris (scarring, irreversible) — a different disease class needing different management ([@dx_definition] not-this-tape)."
  honesty = "These are standard differential considerations; this tape does not prescribe a lab panel — it flags that female AGA is a diagnosis of exclusion in clinical practice."

@D female_staging := "female-pattern staging detail" :: classification [ok]
  ludwig = "Ludwig grades I–III: progressive central/crown density loss with a preserved frontal fringe (I = mild, III = near-total central involvement)."
  sinclair = "Sinclair 1–5: a clinical/photographic severity scale (1 = normal, 5 = advanced) commonly used to track response over time."
  olsen-pattern = "Olsen frontal-accentuation ('Christmas-tree') — breach of the frontal scalp ahead of crown, a recognised female presentation variant."
  staging-honesty = "Stage counts (Ludwig III, Sinclair 5) are clinical-scale ordinals — explicitly not lattice values and not to be lattice-fit ([@f_lattice_fit])."
  use = "Staging sets response expectation and tracks change; it does not by itself establish that the loss is androgenetic (see [@female_workup])."

@D female_teratogenicity := "5ARI teratogenicity constraint in women" :: real-limit [ok required]
  wall = "HARD WALL (reproductive-safety, absolute in pregnancy-potential)"
  statement = "5α-reductase inhibitors (finasteride, dutasteride) feminize the external genitalia of a male fetus and are contraindicated in women who are or may become pregnant; dutasteride's long half-life extends the precautionary window. Women of childbearing potential should not handle crushed/broken finasteride tablets."
  consequence = "In women with pregnancy potential, the entire 5ARI modality is off the table regardless of efficacy — antiandrogen options narrow to agents like spironolactone under specialist care with reliable contraception; topical minoxidil / LDOM remain the non-antiandrogen mainstays."
  basis = "5ARI fetal-feminization risk is established product-labeling pharmacology (mechanism: DHT is required for normal male external-genital development; finasteride/dutasteride block its synthesis). Stated as well-known mechanism-of-action consequence, not attributed to a single RCT."
  |> "[@x_olsen_2006] (dual-inhibition / class pharmacology)"

# ── §8 Cross-links ────────────────────────────────────────────────────

@X x_hair_regen_sibling := "HAIR-REGENERATION.tape" :: sibling-tape [active]
  scope = "de-novo follicular neogenesis / regeneration TECHNOLOGY — solves the problem AGA pharmacology cannot (creating follicles, not suppressing DHT). Split sibling, 2026-05-15."

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §9 External citations (real, landmark literature) ─────────────────

@X x_hamilton_1951 := "Hamilton JB 1951" :: literature [active]
  ref = "Hamilton JB. Patterned loss of hair in man; types and incidence. Ann N Y Acad Sci 1951;53:708–728."

@X x_norwood_1975 := "Norwood OT 1975" :: literature [active]
  ref = "Norwood OT. Male pattern baldness: classification and incidence. South Med J 1975;68:1359–1365."

@X x_orentreich_1959 := "Orentreich N 1959" :: literature [active]
  ref = "Orentreich N. Autografts in alopecias and other selected dermatological conditions. Ann N Y Acad Sci 1959;83:463–479. (donor dominance)"

@X x_kaufman_1998 := "Kaufman KD et al 1998" :: literature [active]
  ref = "Kaufman KD et al. Finasteride in the treatment of men with androgenetic alopecia. Finasteride Male Pattern Hair Loss Study Group. J Am Acad Dermatol 1998;39:578–589."

@X x_olsen_2002 := "Olsen EA et al 2002" :: literature [active]
  ref = "Olsen EA et al. A randomized clinical trial of 5% topical minoxidil versus 2% topical minoxidil and placebo in the treatment of androgenetic alopecia in men. J Am Acad Dermatol 2002;47:377–385."

@X x_olsen_2006 := "Olsen EA et al 2006" :: literature [active]
  ref = "Olsen EA et al. The importance of dual 5α-reductase inhibition in the treatment of male pattern hair loss: results of a randomized placebo-controlled study of dutasteride versus finasteride. J Am Acad Dermatol 2006;55:1014–1023."

@X x_gubelin_2014 := "Gubelin Harcha W et al 2014" :: literature [active]
  ref = "Gubelin Harcha W et al. A randomized, active- and placebo-controlled study of the efficacy and safety of different doses of dutasteride versus placebo and finasteride in men with AGA. J Am Acad Dermatol 2014;70:489–498."

@X x_randolph_tosti_2021 := "Randolph M, Tosti A 2021" :: literature [active]
  ref = "Randolph M, Tosti A. Oral minoxidil treatment for hair loss: A review of efficacy and safety. J Am Acad Dermatol 2021;84:737–746."

@X x_dhurat_2013 := "Dhurat R et al 2013" :: literature [active]
  ref = "Dhurat R et al. A randomized evaluator-blinded study of effect of microneedling in androgenetic alopecia. Int J Trichology 2013;5:6–11."

@X x_garza_2012 := "Garza LA et al 2012" :: literature [active]
  ref = "Garza LA et al. Prostaglandin D2 inhibits hair growth and is elevated in bald scalp of men with androgenetic alopecia. Sci Transl Med 2012;4:126ra34."

@X x_heilmann_2017 := "Heilmann-Heimbach S et al 2017" :: literature [active]
  ref = "Heilmann-Heimbach S et al. Meta-analysis identifies novel risk loci and yields systematic insights into the biology of male-pattern baldness. Nat Commun 2017;8:1584."

@X x_hagenaars_2017 := "Hagenaars SP et al 2017" :: literature [active]
  ref = "Hagenaars SP et al. Genetic prediction of male pattern baldness. PLoS Genet 2017;13:e1006594. (UK Biobank, polygenic)"

@X x_buhl_1990 := "Buhl AE et al 1990" :: literature [active]
  ref = "Buhl AE, Waldon DJ, Baker CA, Johnson GA. Minoxidil sulfate is the active metabolite that stimulates hair follicles. J Invest Dermatol 1990;95:553–557. (minoxidil = prodrug; sulfated metabolite is active)"

@X x_goren_2014 := "Goren A et al 2014" :: literature [active]
  ref = "Goren A et al. Clinical utility and validity of minoxidil response testing in androgenetic alopecia. (follicular sulfotransferase / SULT1A1 activity predicts topical-minoxidil response — responder pharmacogenetics; primary-author/era cited, exact volume not asserted)"
