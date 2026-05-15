# TAPE-AUDIT — florea

**Date:** 2026-05-15 · **Lens:** `.tape` (typed events).

## A. Audit-class ledgers

`state/` exists (CLI audit log written by `cli/florea.hexa`). No
`verify/` scripts, no `.hook-*` files. `papers/` empty.

## B. Identity surface

`AGENTS.tape` v1.2 (governance + identity SSOT) — `@I id001 = florea`,
`@I id002 = florea.verbs` (count=7). `CLAUDE.md` → `AGENTS.tape` symlink.
`hexa.toml` declares the 7 verbs + `hexa-bio = { ">=1.0.0", optional = true }`
optional dependency for analytic shell-out.

## C. Domain `.tape` files

**7 domains × 2 (.tape + .log.tape) = 14 files** at repo root (matching
the hexa-bio convention — domain tapes live at root, not in verb
subdirs), all `tape v1.2`:

- `ANDROGENETIC-ALOPECIA.{tape,log.tape}`  ← split 2026-05-15, tape-only
- `COSMETIC-SURGERY.{tape,log.tape}`
- `HAIR-REGENERATION.{tape,log.tape}`
- `MENS-INTIMATE-CLEANSER.{tape,log.tape}`
- `PERFUMERY.{tape,log.tape}`
- `TATTOO-REMOVAL.{tape,log.tape}`
- `WOMENS-INTIMATE-CLEANSER.{tape,log.tape}`

6 pairs were migrated from `dancinlab/hexa-bio` on 2026-05-15
(completing the verb move recorded in hexa-bio `DECOMPOSITION_PLAN.md`
2026-05-12 — the directories moved then, the `.tape` SSOTs are now
relocated to repo-of-record). Each migrated `.tape` has `@I id001.parent
= dancinlab/florea` with `prior-parent` retained for provenance; each
`.log.tape` records the migration via an `@A migrate_hexa_bio_to_florea`
entry. `skincare` is `.md`-only (no `.tape` leftover to migrate).

`ANDROGENETIC-ALOPECIA` is the 7th, NOT migrated — it was split out of
the generic `HAIR-REGENERATION` tape (2026-05-15). Phase-0 audit found
the pre-split `HAIR-REGENERATION` was a lattice-tautology stub violating
`@F f_unsupported_efficacy`. Remediation: (1) new `ANDROGENETIC-ALOPECIA`
— evidence-based DHT pharmacology (male-pattern primary) + 5 real-limits
anchors + landmark citations; (2) `HAIR-REGENERATION` rewritten as
de-novo follicle regeneration *technology*; (3) `TATTOO-REMOVAL` given a
§0 honesty-framing pass + §8 citation promotion. All three now PASS the
cohort `hexa-bio tape-lint` LATTICE_POLICY honesty gate (invoked via
`florea analyze <verb>`).

Verb subdirectories (`cosmetic-surgery/`, `hair-regeneration/`, ...)
now hold only the `.md` specs — domain SSOT (`.tape`) sits at root.

## D. Per-run / per-event history

Per-verb `.log.tape` siblings hold the chronological event stream
(architecture-vs-history split per `tape v1.2` — see `AGENTS.tape`
`@D g_arch_vs_log_split`). CLI audit log at `state/florea_cli.log`.

## E. Promotion candidates

- **n6 atoms**: lattice claim in README header. Per-tape `n=6` honesty
  is now enforced: `florea analyze <verb>` (no args) shells out to
  `hexa-bio tape-lint` — the cohort LATTICE_POLICY honesty gate (checks
  `@F` lattice-fit guard + `@N` honest stance + ≥1 real citation; flags
  lattice-derivation lines). Per `AGENTS.tape` `@D g_use_hexa_bio_cli`.
- **`.tape` future fit**: ALREADY adopted (v1.2 across AGENTS + 7 domains).
- **hxc/n12**: not yet adopted.

## Verdict

**ACTIVE** — `.tape v1.2` fully adopted (AGENTS.tape + 14 domain-level
`.tape`/`.log.tape` files). Brand-SSOT architecture: Floréa owns the
domain assets (.md + .tape), `hexa-bio` provides the analytic engine via
CLI shell-out (`florea analyze <verb>` → `hexa-bio tape-lint`). No local
analysis infrastructure by design — `selftest/`, `_python_bridge/`,
`_qiskit_bridge/`, `_absorption_bridge/` all stay in hexa-bio per
Strategy A (2026-05-15, florea `3dc13c0` + migrations `04d4d4e`,
`4c72695`, `ef2c7de`). Honesty-remediation cycle (2026-05-15): the
`HAIR-REGENERATION` lattice-tautology violation was split into
`ANDROGENETIC-ALOPECIA` (evidence-based) + rewritten `HAIR-REGENERATION`
(regeneration tech); `TATTOO-REMOVAL` framing-hardened; all 3 PASS the
`hexa-bio tape-lint` gate.
