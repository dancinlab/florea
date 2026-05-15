#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# PERFUMERY.log.tape — perfumery cycle events (chronological)
# Sibling: PERFUMERY.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "PERFUMERY.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:PERFUMERY.tape + PERFUMERY.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:PERFUMERY.tape + PERFUMERY.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 59 (`perfumery` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze perfumery ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [err d=2026-05-15]
  scope = "florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy"
  verdict = "VIOLATION — the pre-split PERFUMERY.tape is a pure n=6 lattice-tautology stub (a .md→.tape migration artifact). The @I brief is the generic placeholder 'fragrance · aromatic chemistry'; the body is ~60 `@D row_*` / `@D b_*` rows whose numbers are σ/τ/φ/J₂-derived, not measured. ZERO real fragrance science: no vapor-pressure / volatility model, no olfactory-receptor biology, no IFRA / allergen / phototoxicity regulatory ceiling, no aroma-material chemistry. ZERO citations. NO @F lattice-fit guard. NO honest @N stance."
  exhibit = "row_x_0: 'x=품질 편차 | x=±30% (장인 의존) | hexa_perfumery=±3% (n=6 표준) | x=σ-φ=10배 균질' — claims a 10× quality-variance reduction justified solely by the lattice identity σ-φ=10, with no perfumery measurement behind it. Direct @F f_unsupported_efficacy hit ('<verb> works because n=6 lattice' without underlying chemistry). Reinforced by b_bt_443 ('향료학 효율 비율 = 1/(σ-φ) = 10% — n=6 EXACT') and row_h_pfm_10 ('베이스 노트 최대 지속 = J₂ = 24시간 — EXACT')."
  governance-cited = "florea AGENTS.tape @F f_unsupported_efficacy (claiming '<verb> works because n=6 lattice' without citing real chemistry) + @D g_honesty_obligation_skincare (cosmetic efficacy claims must cite the actual underlying biology / chemistry, NOT the n=6 lattice). Same violation class as the HAIR-REGENERATION audit_governance_honesty [err] entry; same remedy pattern applies."
  remedy = "REWRITE PERFUMERY.tape as a real-science SSOT for fragrance chemistry & olfaction (volatility / note-pyramid physicochemistry · olfactory-receptor biology · aroma-material chemistry · IFRA/allergen/phototoxicity regulatory ceilings · real-limit anchors · @F f_lattice_fit + @N n6_honest_stance · real @X :: literature). All pre-split lattice-tautology @D row_*/b_* entries superseded — see rewrite event below."
  supersedes = "all pre-split @D row_*/b_* lattice-tautology entries — see supersede event below once rewrite lands"

@A rewrite_real_science := "PERFUMERY.tape rewritten — real fragrance-chemistry & olfaction SSOT" :: rewrite [ok d=2026-05-15]
  ~> "all pre-split @D row_* / b_* lattice-tautology entries (full-file replacement; primer + @V + @I retained, @I kind/brief rewritten to real scope)"
  new-scope = "fragrance chemistry & olfaction knowledge SSOT — physicochemistry of odorant volatility & the note pyramid · olfactory-receptor biology · aroma-material chemistry · safety/regulatory ceilings. NOT formulation / IFRA-compliance / toxicology advice (@N scope_disclaimer)."
  content = "Real cited science: §1 volatility sets the top/heart/base pyramid + the HARD thermodynamic limit that a high-volatility top note cannot be made to last like a base note (fixatives only slow release) [@x_arctander]. §2 olfaction — odorant-receptor GPCR family + combinatorial coding (Buck & Axel 1991, Nobel 2004) [@x_buck_axel_1991], detection thresholds, adaptation / specific anosmia. §3 materials — natural vs synthetic, accords as engineered blends, batch variability of naturals (HARD input limit). §4 safety/regulatory — IFRA Standard use-level caps, EU-labelled allergens (limonene/linalool autoxidation hydroperoxides, eugenol, isoeugenol, cinnamal), furocoumarin (bergapten) phototoxicity in expressed bergamot [@x_ifra]. §5 mechanistic honesty — shape/recognition mainstream, vibration (Turin) theory flagged contested-minority, NOT asserted as fact."
  real-limits = "4 @D :: real-limit anchors: lim_volatility_ceiling (HARD physicochemical) · lim_adaptation (HARD perceptual) · lim_regulatory_ceiling (SOFT/REGULATORY) · lim_natural_variability (HARD input)."
  n6 = "@F f_lattice_fit (forbids deriving longevity/quality/note/accord/grade counts from σ/τ/φ/J₂/sopfr) + @N n6_honest_stance state plainly: perfumery exposes NO natural n=6 invariant — note/family/grade/accord counts are conventions or empirical choices; terpene carbon counts follow the isoprene rule and benzene C6 follows organic chemistry, not a lattice; coincidence is observation, never derivation; lattice declined as derivation tool."
  citations = "3 @X :: literature — Buck & Axel 1991 (Cell, basis of 2004 Nobel) · IFRA Standards (standards body / regulatory framework, cited as such) · Arctander Perfume and Flavor Materials (classic reference compendia, author/era). Real refs only; quantitative claims kept qualitative; no fabricated journal/volume/figures."
  governance = "Resolves the [err] audit_governance_honesty above. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. @N scope_disclaimer marks the tape as knowledge SSOT, not formulation/safety advice (IFRA compliance + toxicology require qualified assessors)."
  honesty-note = "No fabricated efficacy or numbers. Every quantitative claim qualitative / order-of-magnitude with the directive to read exact limits from primary IFRA/regulatory/peer-reviewed sources. Vibration odor theory explicitly demoted to contested-minority view."
  lint = "verified via hexa-bio CLI tape-lint — final sentinel reported in the rewrite report."
