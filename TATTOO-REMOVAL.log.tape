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
# TATTOO-REMOVAL.log.tape — tattoo-removal cycle events (chronological)
# Sibling: TATTOO-REMOVAL.tape (architecture-current)  ·  v1.2 split 2026-05-15
# Repo-of-record: dancinlab/florea (migrated from dancinlab/hexa-bio 2026-05-15)
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A migrate_hexa_bio_to_florea := "TATTOO-REMOVAL.tape ↔ .log.tape leftover migration" :: migration [ok d=2026-05-15]
  source = "dancinlab/hexa-bio:TATTOO-REMOVAL.tape + TATTOO-REMOVAL.log.tape (deleted from hexa-bio)"
  destination = "dancinlab/florea:TATTOO-REMOVAL.tape + TATTOO-REMOVAL.log.tape (root — moved from verb subdir 2026-05-15 same cycle to match hexa-bio convention)"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 63 (`tattoo-removal` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12 but the .tape SSOT pair stayed in hexa-bio as leftover. Mass-split commit 1cbbad2 (2026-05-15) split the leftover into .tape ↔ .log.tape locally; this entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  cross-link-status = "hexa-bio/COSMETIC-SURGERY.tape row_tattoo_removal_2 keeps tattoo-removal as a Cross-DSE pointer — no edit needed (external reference is honest)"

@A audit_governance_honesty := "Phase-0 governance/honesty audit" :: audit [ok d=2026-05-15]
  scope = "florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy"
  verdict = "GROUNDED — efficacy claims cite real biology/clinical sources (Baranska 2018 J Exp Med · Ross 2012 Lasers Surg Med · IARC 2023 · Fitzpatrick 1988). n=6 anchors largely track real domain facts (Fitzpatrick 6 skin types · R20 4-pass · IARC 5 metals)."
  residual = "Some n=6 EXACT-anchor framing reads as derivation rather than observation; 'alien_index 10' / '95%+ 완전제거율' are design/in-silico aspirations not clinical results. Phase-2 adds an explicit observation-not-derivation note + @F mirroring florea f_unsupported_efficacy. No content is fabricated; no rewrite needed — framing-only."
  finding-vs-hair = "Contrast: HAIR-REGENERATION.tape (sibling) is a pure lattice-tautology stub with zero biology — see its .log.tape audit entry. Tattoo tape is the compliant exemplar."

@A phase2_honesty_framing := "Phase-2 honesty-framing pass applied" :: rewrite [ok d=2026-05-15]
  change = "Added §0 framing block after @I id001 (framing-only — ZERO body @D rows deleted; 289-row migration artifact retained for provenance)."
  entries-added = "@N honesty_framing (in-silico scope · observation-not-derivation · flagged the σ/(σ-φ) efficacy-ratio phrasing) + @F f_lattice_fit (mirrors florea f_unsupported_efficacy, parallel to the two hair tapes) + @X x_florea_agents cross-link."
  authority = "§0 is declared AUTHORITATIVE over the migrated body; where body phrasing conflicts, §0 wins."
  rationale = "Phase-0 verdict was GROUNDED (real citations) with framing residual only — so framing fix, not rewrite. Brings the 3 session tapes (TATTOO / ANDROGENETIC-ALOPECIA / HAIR-REGENERATION) to a consistent @F f_lattice_fit + @N honest-stance structure."

@A deepen_structured_core := "§0b structured real-science core added" :: enrichment [ok d=2026-05-15]
  change = "Inserted '§0b Structured real-science core (authoritative over migrated body)' immediately after the §0 block, before the migrated §1+ body. Add-only: zero deletions/rewrites of §0 or the 289-row migration artifact."
  entries-added = "10 new @D (selective photothermolysis · pico-vs-nano photoacoustic fragmentation · wavelength↔ink-color matching · macrophage recapture bottleneck · realistic clinical outcomes as qualitative ranges · Fitzpatrick IV–VI melanin constraint · 4 :: real-limit entries — re-phagocytosis HARD_WALL, TiO2 white-ink darkening HARD_WALL, melanin competition SOFT_WALL, lymphatic clearance window SOFT_WALL) + 1 @N s0b_n6_honest (no natural n=6 invariant; 6 Fitzpatrick / 4 R20 / 5 IARC are observations not derivations; reinforces §0 @F f_lattice_fit). 1 new @X :: literature added to §8 — Anderson RR & Parrish JA, Science 1983;220:524–527 (selective photothermolysis). Each @D grounded by a |> verified-by edge to a §8 @X."
  honesty = "No fabricated efficacy numbers or invented citations. Clinical outcomes stated as qualitative literature-consistent ranges; wavelengths are standard device lines (1064/532/755/694 nm), not efficacy figures. §0 honesty contract preserved and reinforced."
  lint = "python3 hexa-bio/selftest/tape_lattice_honesty_lint.py TATTOO-REMOVAL.tape --json → __TAPE_LATTICE_HONESTY__ PASS (has_guard / has_stance / grounded all true; only pre-existing migrated-body rows appear as tolerated provenance warnings — §0b adds no derivation-looking lines)."

@A scope_narrowed_modality_split := "scope narrowed to laser/device; skin-penetration split out" :: split [ok d=2026-05-15]
  user-decision = "2026-05-15: split tattoo removal by modality. User chose the skin-penetration (피부침투형) half as the NEW tape; chosen name TRANSDERMAL-TATTOO-CLEARANCE.tape (mirrors the ANDROGENETIC-ALOPECIA precedent — new tape = focused split-out, original narrowed)."
  change = "@I id001 kind/brief rescoped to LASER/DEVICE photothermal/photoacoustic fragmentation; added scope-narrowed + sibling fields. §0 gained @N scope_split_2026_05_15 + @X x_transdermal_sibling cross-link. ZERO body deletions — the migrated 289-row body's immune/drug-delivery rows (clodronate MN · CCR2 · ionto/electroporation/PLGA) are SUPERSEDED-BY-SIBLING; authoritative treatment now in TRANSDERMAL-TATTOO-CLEARANCE.tape. §0/§0b stay authoritative for the laser modality."
  boundary = "TATTOO-REMOVAL = laser fragments ink (photothermolysis). TRANSDERMAL-TATTOO-CLEARANCE = skin-penetration delivery acting on the macrophage recapture cycle. Complementary, not competing."
  honesty = "Add-only framing change; honesty contract (@F f_lattice_fit + @N + @X :: literature) preserved. Lint expected PASS (re-verified at commit)."
