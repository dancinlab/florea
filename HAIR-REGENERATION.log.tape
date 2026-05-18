#!/usr/bin/env tape
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# HAIR-REGENERATION.log.tape — hair-regeneration cycle events (chronological)
# Sibling: HAIR-REGENERATION.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "HAIR-REGENERATION.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:HAIR-REGENERATION.tape + HAIR-REGENERATION.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:HAIR-REGENERATION.tape + HAIR-REGENERATION.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 48 (`hair-regeneration` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze hair_regeneration ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [err d=2026-05-15]
  scope = "florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy"
  verdict = "VIOLATION — pre-split tape is a pure n=6 lattice-tautology stub. Zero hair biology: no androgenetic mechanism, no DHT/5α-reductase, no minoxidil/finasteride/dutasteride/PRP, zero clinical citations. Efficacy figures are derived from lattice arithmetic, not biology."
  exhibit = "row_x_0: '모발 재생 % | 20 → 90 | 체감: σ·(σ-φ)/2 연결' — claims 90% regrowth justified by σ·(σ-φ)/2=60-class lattice identity. Direct @F f_unsupported_efficacy hit (claiming '<verb> works because n=6' without underlying biology)."
  conflated-conditions = "Single tape mixed mechanistically distinct entities (androgenetic alopecia · regeneration technology) under one generic 'hair-regeneration' label — taxonomically wrong."
  remedy = "Split per user decision 2026-05-15: (1) new ANDROGENETIC-ALOPECIA.tape — male-pattern primary, real pharmacology + real-limits anchors; (2) this tape rewritten as hair-regeneration TECHNOLOGY (follicular neogenesis / DP-cell / stem-cell / cloning) with real science; lattice-tautology rows removed; n=6 demoted to observation-not-derivation only (often: no natural n=6 invariant, stated honestly)."
  supersedes = "all pre-split @D row_*/b_* lattice-tautology entries — see supersede event below once rewrite lands"

@A rewrite_as_regeneration_tech := "HAIR-REGENERATION.tape rewritten — scope narrowed to regeneration technology" :: rewrite [ok d=2026-05-15]
  ~> "all pre-split @D row_x_* / row_tp_* / b_* lattice-tautology entries (full-file replacement)"
  new-scope = "de-novo follicular neogenesis & follicle bioengineering ONLY. AGA pharmacology removed → ANDROGENETIC-ALOPECIA.tape."
  content = "Real cell-biology with landmark citations: epithelial–mesenchymal cross-talk · bulge stem cells (Cotsarelis 1990) · WIHN (Ito 2007) · DP spheroid inductivity (Higgins 2013) · bioengineered follicle germ (Toyoshima 2012) · iPSC skin organoid (Lee 2020) · biomimetic 3D follicle (Abaci 2018). 4 real-limits anchors: no scalable human neogenesis (HARD) · DP inductivity loss (SOFT) · mini-organ integration (HARD-functional) · safety+scale (regulatory/economic)."
  n6 = "@F f_lattice_fit + @N n6_honest_stance state plainly: regeneration tech has no natural n=6 invariant; lattice declined as derivation tool."
  governance = "Resolves the [err] audit above. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. @N scope_disclaimer marks all approaches preclinical/early-clinical."
  honesty-note = "No fabricated efficacy. Every approach explicitly tagged with its human-translation gap; nothing claimed as a marketed therapy."

@A deepen := "HAIR-REGENERATION.tape enrichment — signaling mechanism + industry landscape + limits" :: enrichment [ok d=2026-05-15]
  == "[@rewrite_as_regeneration_tech]"
  added-s1 = "5 new @D :: mechanism entries deepening morphogenesis biology: Wnt/β-catenin (placode/DP induction; Gat 1998, Andl/Millar 2002), SHH (downgrowth/DP maturation; St-Jacques 1998, Chiang 1999), BMP/FGF (placode spacing / activator–inhibitor field; Botchkarev 1999, Huh 2013), Notch (lineage maintenance; Pan 2004, Vauclair 2005), DP-as-inductive-organizer (Jahoda/Oliver recombination lineage 1980s–90s)."
  added-s2b = "New §2b clinical/industry-stage landscape: @N industry_stage_disclaimer + 5 @D :: industry entries — Stemson (iPSC follicle + direction scaffold, PRECLINICAL), dNovo (cell reprogramming, PRECLINICAL/EARLY), Epibiotech (DP cell therapy, PRECLINICAL/EARLY-CLINICAL), HairClone (follicle banking + DP multiplication, EARLY-CLINICAL), RIKEN/OrganTech Tsuji (follicle-germ transplantation, PRECLINICAL→EARLY-CLINICAL). All tagged 'no approved product / no efficacy or trial outcome claimed'."
  added-s3 = "2 new @D :: real-limit anchors: lim_epithelial_source (HARD — autologous inducible epithelial partner is not an established product input) · lim_cycling_orientation (HARD — physiological cycling + graft orientation + native density at clinical scale, distinct from mere follicle formation)."
  added-s7 = "6 new @X :: literature entries (Gat 1998, Andl 2002, St-Jacques 1998, Botchkarev 1999, Pan 2004, Jahoda 1984) — real landmark refs; secondary findings named by primary author/era where exact volume detail was uncertain (no fabricated citation detail)."
  preservation = "Additive only — every pre-existing entry retained; @F f_lattice_fit + @N n6_honest_stance untouched; new mechanism entries reinforce 'density/orientation governed by activator–inhibitor biology, NOT a fixed lattice number' in prose."
  lint = "python3 hexa-bio/selftest/tape_lattice_honesty_lint.py HAIR-REGENERATION.tape --json → __TAPE_LATTICE_HONESTY__ PASS (has_guard=true · has_stance=true · grounded=true; 2 pre-existing tolerated provenance warnings only)."
