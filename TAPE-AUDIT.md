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

**6 verbs × 2 (.tape + .log.tape) = 12 files** under verb subdirectories,
all `tape v1.2`:

- `cosmetic-surgery/COSMETIC-SURGERY.{tape,log.tape}`
- `hair-regeneration/HAIR-REGENERATION.{tape,log.tape}`
- `mens-intimate-cleanser/MENS-INTIMATE-CLEANSER.{tape,log.tape}`
- `perfumery/PERFUMERY.{tape,log.tape}`
- `tattoo-removal/TATTOO-REMOVAL.{tape,log.tape}`
- `womens-intimate-cleanser/WOMENS-INTIMATE-CLEANSER.{tape,log.tape}`

All 6 pairs were migrated from `dancinlab/hexa-bio` on 2026-05-15
(completing the verb move recorded in hexa-bio `DECOMPOSITION_PLAN.md`
2026-05-12 — the directories moved then, the `.tape` SSOTs are now
relocated to repo-of-record). Each verb's `.tape` has `@I id001.parent =
dancinlab/florea` with `prior-parent` retained for provenance; each
`.log.tape` records the migration via an `@A migrate_hexa_bio_to_florea`
entry. `skincare` is `.md`-only (no `.tape` leftover to migrate).

## D. Per-run / per-event history

Per-verb `.log.tape` siblings hold the chronological event stream
(architecture-vs-history split per `tape v1.2` — see `AGENTS.tape`
`@D g_arch_vs_log_split`). CLI audit log at `state/florea_cli.log`.

## E. Promotion candidates

- **n6 atoms**: 7-verb σ(6)·φ(6)=24 lattice claim in README header.
  Quantitative `n=6` anchor verification is delegated to `hexa-bio`
  via `florea analyze <verb>` (per `AGENTS.tape` `@D g_use_hexa_bio_cli`).
- **`.tape` future fit**: ALREADY adopted (v1.2 across AGENTS + 6 verbs).
- **hxc/n12**: not yet adopted.

## Verdict

**ACTIVE** — `.tape v1.2` fully adopted (AGENTS.tape + 12 verb-level
`.tape`/`.log.tape` files). Brand-SSOT architecture: Floréa owns the
verb assets (.md + .tape), `hexa-bio` provides the analytic engine via
CLI shell-out (`florea analyze <verb>`). No local analysis infrastructure
by design — `selftest/`, `_python_bridge/`, `_qiskit_bridge/`,
`_absorption_bridge/` all stay in hexa-bio per Strategy A
(2026-05-15 cycle, florea commit `3dc13c0` + migrations `04d4d4e`,
`4c72695`, `ef2c7de`).
