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
