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
  destination = "dancinlab/florea:mens-intimate-cleanser/MENS-INTIMATE-CLEANSER.tape + mens-intimate-cleanser/MENS-INTIMATE-CLEANSER.log.tape"
  reason = "completing the verb move recorded in hexa-bio/DECOMPOSITION_PLAN.md line 54 (`mens-intimate-cleanser` MOVED to Floréa 🌸 2026-05-12). Verb directory was moved 2026-05-12; the .tape SSOT pair stayed in hexa-bio as leftover and was processed by mass-split commit 153b5a2 (2026-05-15) in-place. This entry records the relocation to the proper repo-of-record."
  identity-change = "@I id001.parent: dancinlab/hexa-bio → dancinlab/florea (prior-parent retained for provenance)"
  analytic-substrate = "n=6 / selftest / witness work delegated to hexa-bio via `florea analyze mens_intimate_cleanser ...` per florea AGENTS.tape @D g_use_hexa_bio_cli"
