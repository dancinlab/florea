#!/usr/bin/env tape
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# WOMENS-INTIMATE-CLEANSER.log.tape — womens-intimate-cleanser cycle events (chronological)
# Sibling: WOMENS-INTIMATE-CLEANSER.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "WOMENS-INTIMATE-CLEANSER.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:WOMENS-INTIMATE-CLEANSER.tape + WOMENS-INTIMATE-CLEANSER.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:WOMENS-INTIMATE-CLEANSER.tape + WOMENS-INTIMATE-CLEANSER.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 68 (`womens-intimate-cleanser` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze womens_intimate_cleanser ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [err d=2026-05-15]
  scope = "florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare"
  verdict = "VIOLATION — pre-split tape is a pure n=6 lattice-tautology stub (a .md→.tape migration artifact). Zero vulvovaginal-hygiene science: no vulva/vagina anatomy distinction, no microbiome biology, no Lactobacillus/lactic-acid/pH physiology, no bacterial-vaginosis or douching-harm evidence, zero citations, no @F guard, no honest @N stance. Every quantitative figure is derived from lattice arithmetic, not biology."
  exhibit = "row_ph_0: 'x=\"pH 정밀도\" · x=\"0.3\" · hexa=\"**0.1**\" · x=\"체감: 1/σ 연결\"' — claims a 0.1 pH precision target justified by a 1/σ lattice identity (σ(6)=12). Direct @F f_unsupported_efficacy hit: an efficacy/quality number asserted because of n=6, with no underlying biology or chemistry cited. Companion exhibit row_lactobacillus_1 claims '95% Lactobacillus 유지' from 'PF 정상 연결'."
  generic-identity = "@I id001.brief = 'per-domain substrate · n=6 mapping · biological/biochemical context' — a generic migration-template brief carrying no real scope; identical-class to the HAIR-REGENERATION pre-split stub."
  remedy = "Rewrite this tape as a real vulvovaginal-hygiene-science SSOT (same pattern already applied to HAIR-REGENERATION 2026-05-15): keep primer + @V + @I; rewrite @I kind/brief to real consumer-hygiene scope; add @N scope_disclaimer (knowledge SSOT, NOT medical advice); cover VULVAR-vs-VAGINAL anatomy/physiology, the Lactobacillus microbiome, cleansing principles, douching-harm evidence, and real-limit anchors as @D entries |>-grounded to real @X :: literature; @F f_lattice_fit + @N n6_honest_stance demote n=6 to declined-as-derivation. Lattice-tautology @D row_*/b_* entries superseded by full-file replacement."
  supersedes = "all pre-split @D row_*/b_* lattice-tautology entries — see supersede event below once rewrite lands"

@A rewrite_real_science := "WOMENS-INTIMATE-CLEANSER.tape rewritten — real vulvovaginal-hygiene science" :: rewrite [ok d=2026-05-15]
  ~> "all pre-split @D row_* / b_* lattice-tautology entries (full-file replacement)"
  new-scope = "Consumer-hygiene KNOWLEDGE SSOT grounded in real vulvovaginal physiology, microbiome science, and harm epidemiology. @I id001 kind/brief rewritten from generic 'per-domain substrate · n=6 mapping' to real external-vulvar-cleansing scope. @N scope_disclaimer added (knowledge SSOT, NOT medical advice; does NOT treat BV/candidiasis/STIs; symptomatic disease needs a clinician)."
  content <<~EOF
    §1 anatomy/physiology — VULVA = external skin (pH ~3.8–5.0, externally washable) vs
       VAGINA = internal mucosa (pH ~3.5–4.5, Lactobacillus-dominated, SELF-CLEANING,
       must NOT be internally washed/douched); estrogen→glycogen→lactic-acid axis.
    §2 microbiome — Lactobacillus dominance (L. crispatus/iners) → lactic acid → low pH;
       Ravel 2011 community state types; BV = loss of lactobacilli + pH >4.5 + Gardnerella
       (Amsel/Nugent diagnosis); candidiasis distinguished as a separate fungal condition.
    §3 cleansing principles — external vulvar only; mild, pH-targeted to the VULVA (~5)
       NOT the vagina; fragrance/antiseptic/douching DISRUPT flora.
    §4 strong-evidence harm — douching epidemiologically associated with BV/PID/adverse
       outcomes; mechanistically consistent; STRONG recommendation against.
    §5 4 real-limit anchors — vaginal ecosystem self-regulating (HARD) · douching harmful
       (HARD epidemiological+mechanistic) · product pH must match vulva not vagina (HARD) ·
       cleanser ≠ therapeutic for BV/candidiasis/STIs (scope HARD).
  EOF
  n6 = "@F f_lattice_fit (forbids deriving pH/efficacy/ingredient counts from σ/τ/φ/J₂) + @N n6_honest_stance ('vulvovaginal hygiene exposes NO natural n=6 invariant; lattice declined as derivation')."
  citations = "Real @X :: literature: Ravel 2011 (PNAS, vaginal microbiome of reproductive-age women), Amsel 1983 + Nugent 1991 (BV diagnosis), Brotman 2008 + Cottrell 2010 (douching-harm epidemiology), Sobel 2007 (candidiasis), Amabebe 2018 (lactic-acid physiology review), plus vulvar-dermatology / estrogen-glycogen / intimate-hygiene refs named by primary author/era where exact volume detail was uncertain. No fabricated journal/volume/page numbers; quantitative claims kept as qualitative ranges. Treated as respectful hygiene science."
  governance = "Resolves the [err] audit_governance_honesty above. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. Pattern mirrors HAIR-REGENERATION rewrite (2026-05-15)."
  honesty-note = "No fabricated efficacy. Every quantitative range qualified; product ceiling stated honestly as 'mild, non-disruptive external wash — best case is doing no harm to a system it cannot legitimately enhance'."
  lint = "verified via hexa-bio CLI shell-out per florea AGENTS.tape @D g_use_hexa_bio_cli → __TAPE_LATTICE_HONESTY__ PASS (has_guard=true · has_stance=true · grounded=true)."
