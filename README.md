# 🌸 Floréa — n=6 cosmetic·aesthetic·skincare substrate (7-verb library)

> 7-verb cosmetic·aesthetic·skincare·perfumery substrate organized as a closed-form spec catalog.
> Verbs migrated from `hexa-medic` (6 verbs) + `hexa-bio` electronic-skin
> (1 verb: skincare) on 2026-05-12. Member of the **HEXA family**
> (`n=6` invariant lattice), standalone brand (no `hexa-` prefix, Lumière style).

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-informational.svg)](hexa.toml)
[![Verbs](https://img.shields.io/badge/verbs-7-blue.svg)](#verbs)
[![n=6 lattice](https://img.shields.io/badge/n=6-σ·φ_=_n·τ_=_24-blue.svg)](#n6-master-identity)

---

## Why Floréa?

`Floréa` is the 🌸 cosmetic/aesthetic member of the HEXA family. It carries the
미용 (beauty) verbs that were originally bundled into `hexa-medic` but didn't
fit a medicine·pharmacology·oncology·virology substrate — cosmetic surgery,
aesthetic skincare, hair regeneration, perfumery, body-care, and aesthetic
procedures.

The name `Floréa` (불어: flore + -éa diminutive) follows the standalone-brand
convention (like `Lumière` for camera filter, `Pâtisserie` for bakery) — a
HEXA family member without the `hexa-` prefix because it ships as a
consumer-facing aesthetic brand identity rather than a tooling/substrate.

GitHub URL slug: `dancinlab/florea` (no accent in URL); display name: **Floréa**.

---

## Verbs

| Verb | Spec | Status |
|------|------|--------|
| `cosmetic_surgery` | [cosmetic-surgery/cosmetic-surgery.md](cosmetic-surgery/cosmetic-surgery.md) | spec |
| `hair_regeneration` | [hair-regeneration/hair-regeneration.md](hair-regeneration/hair-regeneration.md) | spec |
| `mens_intimate_cleanser` | [mens-intimate-cleanser/mens-intimate-cleanser.md](mens-intimate-cleanser/mens-intimate-cleanser.md) | spec |
| `perfumery` | [perfumery/perfumery.md](perfumery/perfumery.md) | spec |
| `skincare` | [skincare/skincare.md](skincare/skincare.md) | spec (ex-hexa-skin electronic-skin substrate; cosmetic 측면 흡수) |
| `tattoo_removal` | [tattoo-removal/tattoo-removal.md](tattoo-removal/tattoo-removal.md) | spec |
| `womens_intimate_cleanser` | [womens-intimate-cleanser/womens-intimate-cleanser.md](womens-intimate-cleanser/womens-intimate-cleanser.md) | spec |

---

## n=6 master identity

```
σ(6) · φ(6) = n · τ(6) = J₂ = 24
12   ·  2   = 6 ·  4   = 24
```

7 cosmetic verbs at v0.1.0 (initial migration + hexa-skin absorption).
Future v1.x may expand toward σ(6)=12 cosmetic surface verbs (makeup
chemistry, fragrance composition, body-care, hair-coloring,
aesthetic-device-class, anti-aging actives).

---

## Install

```bash
# 1. Install hexa-lang (ships `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install florea
hx install florea          # global, pulls latest from registry
```

## Run

```bash
florea list             # verb table
florea selftest         # 7-verb spec presence sweep
florea <verb>           # read a verb spec (cosmetic_surgery / hair_regeneration / mens_intimate_cleanser / perfumery / skincare / tattoo_removal / womens_intimate_cleanser)
florea version          # print version
florea help             # full help (subcommands + flags + env)
```

---

## Origin

Migrated from the (now-deleted) `dancinlab/hexa-medic` 24-verb library
(cycle-30++++++ decomposition, 2026-05-12). `hexa-medic` repo was fully
decomposed (24 → 0 verbs) and removed; per-file canon@ded52144 lineage
annotations preserved in each verb's frontmatter. See [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio)
`DECOMPOSITION_PLAN.md` for the full hexa-medic → Floréa + hexa-bio +
hexa-matter + deletion split rationale.

## Cross-link

- Family root: [`dancinlab/hexa-meta`](https://github.com/dancinlab/hexa-meta)
- Sibling: ~~`dancinlab/hexa-medic`~~ — **DELETED 2026-05-12**; was the
  source repo for 6 of Floréa's 7 verbs before full decomposition
- Sibling: [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio) — 5-axis drug-discovery framework
