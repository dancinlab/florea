#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# MENS-INTIMATE-CLEANSER.log.tape — mens-intimate-cleanser cycle events (chronological)
# Sibling: MENS-INTIMATE-CLEANSER.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "MENS-INTIMATE-CLEANSER.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:MENS-INTIMATE-CLEANSER.tape + MENS-INTIMATE-CLEANSER.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:MENS-INTIMATE-CLEANSER.tape + MENS-INTIMATE-CLEANSER.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 54 (`mens-intimate-cleanser` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze mens_intimate_cleanser ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [err d=2026-05-15]
  scope = "florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare"
  verdict = "VIOLATION — pre-split MENS-INTIMATE-CLEANSER.tape is a pure n=6 lattice-tautology stub (a .md→.tape migration artifact). Generic @I brief ('per-domain substrate · n=6 mapping · biological/biochemical context'); efficacy/safety/composition numbers all derived from σ/τ/φ/J₂ arithmetic; zero dermatology or hygiene science; zero literature citations; no @F lattice-fit guard; no honest @N n=6 stance."
  exhibit = "@D row_x_1: 'x=\"미생물 억제 %\" · x=\"70\" · hexa=\"**96**\" · x=\"체감: 2σ·τ 연결\"' — asserts a 96% microbial-suppression figure justified solely by the lattice identity 2·σ·τ, with no microbiology. Companion row_x_3 claims '임상 안전성 99.9% = 1-1/σ³'. Direct @F f_unsupported_efficacy hit ('<verb> works because n=6 lattice' with no underlying biology/chemistry/clinical study) and a @D g_honesty_obligation_skincare breach (cosmetic efficacy claim not grounded in real biology)."
  harmful-framing = "A '96% microbial suppression / 99.9% safety' male-intimate cleanser claim is not merely unsupported — antiseptic over-suppression of healthy commensal genital skin is biologically harmful (dysbiosis / Candida intertrigo), so the lattice-derived target is directionally wrong, not just ungrounded."
  remedy = "REWRITE this tape as a real male-genital (penile/scrotal) skin-cleansing hygiene-science SSOT: skin biology (thin/occluded skin, acid mantle, physiological smegma), surfactant science (anionic SLS irritancy vs mild syndet/amphoteric), microbiome (commensal preservation, over-washing harm), formulation contact-dermatitis risk; real-limit anchors; @F f_lattice_fit guard + @N n6_honest_stance ('no natural n=6 invariant; lattice declined as derivation'); real @X :: literature. See supersede event below once rewrite lands."
  supersedes = "all pre-split @D row_*/b_* lattice-tautology entries — see [@rewrite_real_science] supersede event below"

@A rewrite_real_science := "MENS-INTIMATE-CLEANSER.tape rewritten — real dermatology/hygiene science SSOT" :: rewrite [ok d=2026-05-15]
  ~> "all pre-split @D row_* / b_* lattice-tautology entries (full-file replacement: row_ph_0, row_x_1..8, row_bio_pharma_0, row_immunology_1, row_womens_intimate_cleanser_2, row_core_0, row_input_1, row_process_2, row_symmetry_3, row_output_4, row_fallback_5, row_exact_9, row_1_0..3_2, row_tp_1_0..10_9, b_6_12_12_0, b_6_4_4_1, b_6_2_2_2, b_n_6_e_planck*, b_falsifier*, b_13_13_pass*, b_n_6_n*)"
  new-scope = "Male genital (penile/scrotal) skin-cleansing consumer-hygiene knowledge SSOT ONLY. @I kind/brief rewritten from generic 'per-domain substrate · n=6 mapping' to real dermatology scope. @N scope_disclaimer added (consumer hygiene, NOT medical advice; a cleanser does not treat balanitis/STIs/dermatoses; symptomatic disease → clinician)."
  content = "Real science with author/era-anchored citations: skin biology (thin/occluded/permeable genital skin, acid mantle ~pH 4–5, smegma is normal physiology) · surfactant science (anionic SLS irritancy vs mild syndet/amphoteric; cleansing↔mildness trade-off) · microbiome (commensal colonization resistance; over-washing/antiseptic overuse → dysbiosis/Candida intertrigo; sterilizing healthy skin is HARMFUL) · formulation contact-dermatitis risk on thin genital skin. 4 real-limit anchors: cannot healthily sterilize commensal skin (HARD biological) · pH must respect acid mantle (HARD physiological) · mildness↔detergency trade-off (SOFT) · a cleanser is not a therapeutic (HARD scope)."
  n6 = "@F f_lattice_fit + @N n6_honest_stance state plainly: male intimate cleansing has NO natural n=6 invariant; lattice DECLINED as derivation tool (observation-not-derivation)."
  governance = "Resolves the [err] [@audit_governance_honesty] above. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. Every @D mechanism/real-limit |>-grounded to an @X :: literature entry."
  honesty-note = "No fabricated efficacy or citation detail. Quantitative claims kept qualitative or as ranges (e.g. acid-mantle 'pH ~4–5'); the Edwards balanitis-guidance and Zhai/Maibach occlusion refs are named by author/guideline-lineage + era with journal/volume deliberately not asserted to avoid fabricating citation detail. The pre-rewrite '96% microbial suppression' framing was additionally noted as directionally HARMFUL, not merely ungrounded."
  entry-counts = "post-rewrite: 1 @V · 1 @I · 1 @F · 4 @N/note (1 scope_disclaimer + 1 n6_honest_stance counted; @F + stance present) · 9 @X (8 literature/governance, of which 5 :: literature) · @D total 15 (3 bio mechanism + 2 chem mechanism + 2 micro mechanism + 1 risk real-limit + 4 §5 real-limit + 3 tp prediction)."
  lint = "hexa-bio CLI `hexa run cli/hexa-bio.hexa tape-lint MENS-INTIMATE-CLEANSER.tape` → __TAPE_LATTICE_HONESTY__ PASS (has_guard=true · has_stance=true · grounded=true)."
