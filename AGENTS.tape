#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@X hexa_verify := "hexa verify — verification via hexa CLI only" :: guide [active]
  tldr = "Any correctness / purity / grade / identity claim → verify with `hexa <verb>` or `hexa run <verifier>.hexa` (e.g. `hexa run tool/atlas_verify.hexa`) and paste the verdict VERBATIM. NEVER cite sympy / PyPhi / Wolfram / Mathematica output as evidence."
  detail = "~/core/atlas/VERIFY.tape"

@X wilson_pool := "wilson pool — resource utilization" :: guide [active]
  tldr = "Heavy / deterministic work (build · drill · probe · compile · test-sweep · GPU fire) → do NOT serialize on localhost; route to the host pool: `wilson pool list` then `wilson pool on <host> <cmd>`, or a ToolUse `\"host\"` field. Empty roster = degrade-to-local, fine."
  detail = "~/core/atlas/POOL.tape"

@I id001 := "florea" :: identity-claim [d=2026-05-14 active]
  kind = "🌸 cosmetic · aesthetic · skincare · perfumery substrate · 7-verb library"
  brief = "HEXA-family standalone brand (Lumière style · no hexa- prefix) · 7 verbs migrated from hexa-medic + hexa-bio · n=6 invariant"
  parent = "dancinlab"
  visibility = "PUBLIC · MIT"
  origin = "verbs migrated from hexa-medic (6) + hexa-bio electronic-skin (1: skincare) on 2026-05-12"
  brand-convention = "standalone-brand (like Lumière camera-filter · Pâtisserie bakery) — HEXA member without hexa- prefix"

@I id002 := "florea.verbs" :: identity-claim [d=2026-05-14 active]
  <: id001
  count = "7"
  domains = [cosmetic-surgery, aesthetic-skincare, hair-regeneration, perfumery, body-care, aesthetic-procedures, electronic-skin]
  matches = "n=6 invariant lattice (σ·φ = n·τ = 24)"

@D g_inherit := "inherits-lattice-policy" :: governance [required]
  rule = "All echoes/LATTICE_POLICY.md rules apply (real-limits-first · lattice-is-tool · honesty-external)."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g_brand_no_hexa_prefix := "standalone-brand-naming" :: governance [required]
  rule = "florea ships as standalone brand (no hexa- prefix) — Lumière / Pâtisserie style."
  why = "consumer-facing brand · not a technical substrate ID"
  cohort = "[Lumière (camera filter), Pâtisserie (bakery), Floréa (cosmetic)]"
  @> AGENTS.md

@D g_honesty_obligation_skincare := "honesty-on-cosmetic-claims" :: governance [required deny:write]
  rule = "Cosmetic / skincare efficacy claims must cite the actual underlying biology / chemistry, NOT the n=6 lattice."
  authority = "[@x_lattice_policy] §1.3"
  @> AGENTS.md

@D g_commit_conventions := "commit-trailer-coauthor" :: governance [recommended]
  rule = "AI-assisted commits include `Co-Authored-By: <model> <noreply@anthropic.com>` trailer; Conventional Commits title."
  @> AGENTS.md

@D g_arch_vs_log_split := "v1.2 architecture-vs-history split" :: governance [required d=2026-05-14 active]
  rule = "UPPERCASE.tape files are EDITABLE architecture (latest-wins per id). Append-only event history lives in UPPERCASE.log.tape siblings."
  why = "declarative entries (governance · config · layout · identity) evolve naturally; locking them as append-only via ~> supersedes creates noisy histories. The split lets architecture stay current and history stay immutable."
  applies-to = "AGENTS.tape · all UPPERCASE.tape root files"
  authority = "[@x_tape_spec] §Domain-tape sibling §Architecture-vs-history split"
  @> AGENTS.md

@D g_use_hexa_bio_cli := "florea-shells-out-to-hexa-bio-for-analysis" :: governance [required d=2026-05-15 active]
  rule = "Floréa is the brand SSOT for the 7 verbs (.md + .tape assets). Analytic work (n=6 anchor verification · selftest gates · Python witnesses · cross-DSE audits) lives in dancinlab/hexa-bio and is invoked via CLI shell-out from `florea analyze <verb>` — NEVER reimplemented inside florea."
  why = "florea ships as a brand wrapper without analysis infrastructure (no selftest/, _python_bridge/, _qiskit_bridge/, or _absorption_bridge/ directories). Duplicating bio-engine logic here would create drift against the 5-axis SSOT in hexa-bio. This mirrors the pattern hexa-bio applies to qmirror/hexa-meta/xeno/canon-infra (see hexa-bio AGENTS.tape g5_sister_repo_cli)."
  how-to-apply = "CLI-direct gates over Python wrappers. SKIP if hexa-bio is not reachable on the host (honest, not failure). FAIL is reserved for 'hexa-bio reachable, returned non-zero'."
  authority = "[@x_hexa_bio] · mirrors dancinlab/hexa-bio:AGENTS.tape g5_sister_repo_cli"
  @> AGENTS.md


@F f1 := "lattice-fit-on-external-entity" :: governance [required deny:write]
  pattern = "applying n=6 lattice as derivation rule to L'Oréal · Estée Lauder · Shiseido · dermatology research bodies · clinical trials · or any external cosmetic vendor"

@F f_unsupported_efficacy := "unsupported-efficacy-claim" :: governance [required deny:write]
  pattern = "claiming '<verb> works because n=6 lattice' without citing the underlying biology / chemistry / clinical study"
  remedy = "cite real-limits source (FDA monograph · ISO standard · peer-reviewed clinical study)"

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: policy [d=2026-05-12 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"

@X x_tape_spec := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"

@X x_hexa_medic := "dancinlab/hexa-medic" :: source-substrate [active]
  scope = "6 verbs migrated from here to florea on 2026-05-12 — verbs that didn't fit medicine/pharmacology/oncology/virology substrate"

@X x_hexa_bio := "dancinlab/hexa-bio" :: source-substrate [active]
  scope = "1 verb (skincare via electronic-skin) migrated to florea"

@X x_lumiere := "dancinlab/lumiere" :: brand-cohort [active]
  scope = "cohort member · standalone-brand naming pattern (Lumière camera filter)"

@H h1 := "agents-md-replaced" :: generator [active]
  note = "AGENTS.md (0-byte placeholder) replaced by this AGENTS.tape (tape v1.2)"

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "CLAUDE.md → AGENTS.tape symlink"
  command = `ln -sf AGENTS.tape CLAUDE.md`
