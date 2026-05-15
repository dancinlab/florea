#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# ANDROGENETIC-ALOPECIA.log.tape — AGA tape event history (chronological)
# Sibling: ANDROGENETIC-ALOPECIA.tape (architecture-current)
# Repo-of-record: dancinlab/florea
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A split_from_hair_regeneration := "AGA tape created by splitting HAIR-REGENERATION.tape" :: split [ok d=2026-05-15]
  origin = "HAIR-REGENERATION.tape was a single lattice-tautology stub conflating mechanistically distinct entities (see HAIR-REGENERATION.log.tape @A audit_governance_honesty [err])."
  user-decision = "2026-05-15: scope this session to 남성형 탈모 (male-pattern); recognize male-pattern = the male phenotype OF androgenetic alopecia (NOT a separate disease); split the tape. Chosen split name: ANDROGENETIC-ALOPECIA.tape (umbrella, male-pattern primary, female-pattern §7)."
  authored = "Hand-written with real biology + landmark clinical citations (Kaufman 1998 · Olsen 2002/2006 · Norwood 1975 · Orentreich 1959 · Garza 2012 · etc.). Replaces ZERO biology with evidence-based pharmacology + 5 real-limits anchors (donor finitude · DHT-suppression ceiling · fibrotic irreversibility · non-editable genotype · suppressive-not-curative)."
  n6-stance = "Declined as a derivation tool. @N n6_honest_stance + @F f_lattice_fit state plainly: AGA has no natural n=6 invariant (Norwood=VII≠6; 3 5AR isoenzymes). This honesty is the corrective for the audited HAIR-REGENERATION violation."
  governance = "Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy. Clinical-scope disclaimer (@N scope_disclaimer) added — knowledge SSOT, not medical advice."
  sibling = "HAIR-REGENERATION.tape concurrently rewritten as regeneration-TECHNOLOGY tape (de-novo neogenesis) — the complementary problem AGA pharmacology cannot solve."

@A phase3_analyze_verifier_wired := "florea analyze → hexa-bio tape-lint (session-wide)" :: integration [ok d=2026-05-15]
  scope = "Records the Phase-3 wiring shared by all 3 session tapes (TATTOO-REMOVAL / ANDROGENETIC-ALOPECIA / HAIR-REGENERATION). Kept here as the session's primary new artifact's log; not duplicated into the sibling logs."
  hexa-bio-side = "NEW selftest/tape_lattice_honesty_lint.py — generic cohort LATTICE_POLICY honesty linter (stdlib, deterministic; checks @F lattice-fit guard + @N honest stance + ≥1 real @X/ref citation; flags lattice-derivation lines; PASS/FAIL/SKIP + __TAPE_LATTICE_HONESTY__ sentinel). NEW `hexa-bio tape-lint <DOMAIN.tape>` CLI subcommand + help. Lives in hexa-bio because hexa-bio owns LATTICE_POLICY enforcement for the cohort (g5_sister_repo_cli)."
  florea-side = "cli/florea.hexa: tape_path() root-.tape resolver; `florea analyze <verb>` with no args now defaults to `hexa-bio tape-lint <root .tape>`; explicit args still raw pass-through; androgenetic_alopecia added as a tape-only analyze target. Propagates lint FAIL as exit 1; honest SKIP if hexa-bio absent (g_use_hexa_bio_cli)."
  validated = "Linter PASS×3 (TATTOO-REMOVAL after §8 citation promotion · ANDROGENETIC-ALOPECIA · HAIR-REGENERATION). hexa-bio CLI tape-lint end-to-end PASS. florea→hexa-bio full shell-out exercised via PATH shim: `florea analyze tattoo_removal` → `hexa-bio tape-lint` → PASS exit 0. florea honest-SKIP path confirmed when hexa-bio off PATH."
  finding = "Lint initially FAILed TATTOO-REMOVAL (sources were prose-only, no structured @X). Resolved honestly by promoting the already-referenced real sources (Baranska 2018 / Ross 2012 / Fitzpatrick 1988 / IARC) to §8 @X :: literature entries — grounding promotion, not lint weakening."

@A deepen := "AGA tape enriched — §3b comparison + §4 nuances + §7 female workup" :: enrichment [ok d=2026-05-15]
  added = "NEW §3b head-to-head modality comparison (7 @D :: comparison entries: cmp_axis/finasteride/dutasteride/minoxidil/transplant/synthesis — qualitative target/DHT-direction/evidence-grade/durability/AE rows, each |>-grounded to existing landmark @X). §4 deepened with 2 NEW @D :: real-limit entries (lim_sult1a1 = minoxidil SULT1A1 responder pharmacogenetics; lim_type1_escape = type-I 5AR escape mechanistic refinement of lim_dht_ceiling). §7 expanded with 3 NEW @D entries (female_workup = PCOS/thyroid/iron/TE/scarring differential; female_staging = Ludwig I–III / Sinclair 1–5 / Olsen detail; female_teratogenicity = 5ARI fetal-feminization HARD WALL). 2 NEW real @X :: literature (Buhl 1990 minoxidil-sulfate-is-active; Goren 2014 minoxidil-response-testing — Goren volume not asserted, primary-author/era only)."
  honesty = "No fabricated numbers/citations — magnitudes kept qualitative (direction + relative ordering + landmark trial); existing @F f_lattice_fit + @N n6_honest_stance preserved and reinforced in new prose (cmp_synthesis 'mechanistic complementarity not a lattice product'; female_staging 'scale ordinals not lattice values'). Zero existing entries deleted (add-only)."
  lint = "python3 hexa-bio/selftest/tape_lattice_honesty_lint.py ANDROGENETIC-ALOPECIA.tape --json → __TAPE_LATTICE_HONESTY__ PASS (has_guard=true, has_stance=true, grounded=true; deriv_warnings unchanged = original guard/stance provenance lines only, no new derivation lines)."
