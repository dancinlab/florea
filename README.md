# 🌸 Floréa — n=6 cosmetic·aesthetic·skincare substrate (6-verb library)

> 6-verb cosmetic·aesthetic·skincare·perfumery substrate organized as a closed-form spec catalog.
> Each verb is a directory of canonical specs migrated from `hexa-medic`
> on 2026-05-12. Member of the **HEXA family** (`n=6` invariant lattice),
> standalone brand (no `hexa-` prefix, Lumière style).

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-informational.svg)](hexa.toml)
[![Verbs](https://img.shields.io/badge/verbs-6-blue.svg)](#verbs)
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
| `tattoo_removal` | [tattoo-removal/tattoo-removal.md](tattoo-removal/tattoo-removal.md) | spec |
| `womens_intimate_cleanser` | [womens-intimate-cleanser/womens-intimate-cleanser.md](womens-intimate-cleanser/womens-intimate-cleanser.md) | spec |

---

## n=6 master identity

```
σ(6) · φ(6) = n · τ(6) = J₂ = 24
12   ·  2   = 6 ·  4   = 24
```

6 cosmetic verbs at v0.1.0 (initial migration). Future v1.x may expand
toward σ(6)=12 cosmetic surface verbs (skincare actives, makeup chemistry,
fragrance composition, body-care, hair-coloring, aesthetic-device-class).

---

## Usage

```bash
florea cosmetic_surgery
florea hair_regeneration
florea perfumery
florea list
florea selftest
```

---

## Origin

Migrated from `dancinlab/hexa-medic` (cycle-30++++++ decomposition,
2026-05-12) — see [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio)
`DECOMPOSITION_PLAN.md` for the full hexa-medic → Floréa + hexa-bio +
deletion split rationale.

## Cross-link

- Family root: [`dancinlab/hexa-meta`](https://github.com/dancinlab/hexa-meta)
- Sibling: [`dancinlab/hexa-medic`](https://github.com/dancinlab/hexa-medic) — therapeutic medicine substrate (post-decomposition)
- Sibling: [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio) — 5-axis drug-discovery framework
