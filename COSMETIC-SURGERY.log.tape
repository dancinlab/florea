#!/usr/bin/env tape
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# COSMETIC-SURGERY.log.tape — cosmetic-surgery cycle events (chronological)
# Sibling: COSMETIC-SURGERY.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "COSMETIC-SURGERY.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:COSMETIC-SURGERY.tape + COSMETIC-SURGERY.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:COSMETIC-SURGERY.tape + COSMETIC-SURGERY.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 46 (`cosmetic-surgery` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze cosmetic_surgery ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [err d=2026-05-15]
  scope = "florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare"
  verdict = "VIOLATION — pre-split COSMETIC-SURGERY.tape is a pure n=6 lattice-tautology stub, a .md→.tape migration artifact. Zero surgical/biological science: no wound-healing cascade, no flap/angiosome vascular biology, no procedure (rhinoplasty/blepharoplasty/rhytidectomy/liposuction/fat grafting), no complication class, zero literature citations. Every outcome figure is derived from σ/τ/φ/J₂ lattice arithmetic, not surgery."
  exhibit = "row_x_0: 'x=\"대칭 정확도 %\" · x=\"75\" · hexa=\"**99**\" · x=\"체감: 1-1/σ² 연결\"' — claims a 99% symmetry-accuracy outcome justified by a 1−1/σ² lattice identity (σ=12). Direct @F f_unsupported_efficacy hit (claiming '<verb> works because n=6' with no underlying biology). Companion rows (row_x_1 회복 기간 ↔ φ=2, row_x_2 재수술률 ↔ φ=2, row_exact_9 EXACT 비율 93% ↔ (σ·φ/n·τ)·93) are the same lattice-tautology class."
  generic-identity = "@I id001.brief was the boilerplate 'per-domain substrate · n=6 mapping · biological/biochemical context' — no real cosmetic-surgery scope; identical migration-stub shape to the pre-rewrite HAIR-REGENERATION.tape."
  remedy = "Rewrite as a real-science cosmetic/aesthetic-surgery knowledge SSOT (same established pattern applied to HAIR-REGENERATION.tape this cycle): real procedures + wound-healing biology + vascular/flap biology + fat-graft + tumescent-liposuction safety + complication classes, every @D |>-grounded to a landmark @X :: literature entry; real-limit anchors (scar inevitability, perfusion-limited flap size, fat-graft retention ceiling, anesthetic/volume safety, patient-factor healing); lattice-tautology @D rows removed; @F f_lattice_fit + @N n6_honest_stance demote n=6 to declined-as-derivation. See rewrite event below."
  supersedes = "all pre-split @D row_*/b_*/row_tp_* lattice-tautology entries — see supersede event below once rewrite lands"

@A rewrite_real_science := "COSMETIC-SURGERY.tape rewritten — real cited surgical-domain SSOT" :: rewrite [ok d=2026-05-15]
  ~> "all pre-split @D row_* / b_* / row_tp_* lattice-tautology entries (full-file replacement)"
  new-scope = "Aesthetic/cosmetic surgery knowledge SSOT: real surgical procedures, wound-healing biology, vascular/flap physiology, and their real engineering/biology limits. NOT medical advice (see @N scope_disclaimer)."
  content = "§1 Procedures (7 @D): rhinoplasty · blepharoplasty · rhytidectomy/SMAS facelift · liposuction · autologous fat grafting · alloplastic implants · scar revision. §2 Wound-healing biology (4 @D): four-phase cascade (hemostasis→inflammation→proliferation→remodeling) · adult skin heals by SCAR not regeneration (HARD WALL) · tension→scar quality · host-factor ceiling. §3 Vascular/flap biology (2 @D): angiosome concept (Taylor & Palmer 1987) · perfusion-limited flap dimensions / ischemic necrosis. §4 real-limits anchors (6 @D :: real-limit): scar inevitability (HARD) · perfusion-limited flap size (HARD) · fat-graft retention ceiling (SOFT) · tumescent anesthetic/aspirate-volume safety (HARD) · patient-factor healing (SOFT-TO-HARD) · irreducible complication classes (STRUCTURAL). §6 3 falsifiable non-lattice predictions."
  entry-counts = "@D total 24 (7 procedure + 4 mechanism wound-healing + 2 mechanism vascular + 6 real-limit + 3 prediction + 2 §-helper via mechanism) · @X 9 (8 :: literature + 1 :: governance florea AGENTS.tape) · @F 1 (f_lattice_fit) · @N 2 (scope_disclaimer + n6_honest_stance)."
  n6 = "@F f_lattice_fit (mirrors florea f_unsupported_efficacy — forbids deriving outcomes/rates from σ/τ/φ/J₂) + @N n6_honest_stance ('cosmetic surgery exposes NO natural n=6 invariant; lattice declined as a derivation tool; observation-not-derivation only')."
  governance = "Resolves the [err] audit above. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. @N scope_disclaimer marks the tape NOT medical advice / not a procedure recommendation / not a safety-efficacy claim — real surgery requires a licensed surgeon."
  honesty-note = "No fabricated efficacy, no invented citation volume/page detail, no outcome statistics. Landmark refs are real (Taylor & Palmer 1987 angiosomes; Klein tumescent technique; Coleman structural fat grafting; Mitz & Peyronie 1976 SMAS; Mustoe 2002 scar; Gurtner 2008 wound repair); reference-text and author/era-only citations are explicitly labelled as such where exact volume/page was uncertain. Quantitative claims kept qualitative/range-level."
  lint = "Verified via hexa-bio cohort honesty linter — see COSMETIC-SURGERY.tape rewrite report; final sentinel __TAPE_LATTICE_HONESTY__ PASS (has_guard=true · has_stance=true · grounded=true)."
