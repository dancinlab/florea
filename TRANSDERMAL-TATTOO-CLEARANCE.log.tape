#!/usr/bin/env tape
@V := "tape" :: spec [active]
  version = "1.2"

# ══════════════════════════════════════════════════════════════
# TRANSDERMAL-TATTOO-CLEARANCE.log.tape — event history (chronological)
# Sibling: TRANSDERMAL-TATTOO-CLEARANCE.tape (architecture-current)
# Repo-of-record: dancinlab/florea
# ══════════════════════════════════════════════════════════════

# §Log — entries chronological, oldest first

@A split_from_tattoo_removal := "skin-penetration tape split out of TATTOO-REMOVAL.tape" :: split [ok d=2026-05-15]
  user-decision = "2026-05-15: split tattoo removal by modality axis. User chose the skin-penetration (피부침투형) half as the new tape; chosen name TRANSDERMAL-TATTOO-CLEARANCE.tape (mirrors the ANDROGENETIC-ALOPECIA split precedent: new tape = focused split-out domain, original tape narrowed)."
  boundary = "TATTOO-REMOVAL.tape → laser/device physical fragmentation (photothermal/photoacoustic). THIS tape → intradermal/transdermal delivery acting on the pigment-laden macrophage recapture cycle."
  authored = "Hand-written with real cell-bio + landmark citations: macrophage capture–release cycle (Baranska 2018) · liposomal-clodronate macrophage depletion as the canonical research method (van Rooijen & Sanders 1994) · transdermal barrier + microneedle/enhancement routes (Prausnitz & Langer 2008; Prausnitz 1993 electroporation). 5 real-limit anchors: stratum-corneum barrier (HARD) · MN depth vs ink depth (geometric) · transient depletion (structural) · off-target macrophage loss (immunological) · preclinical-only evidence base (translational HARD)."
  honesty = "@N scope_disclaimer marks the modality EXPERIMENTAL (no approved product; clodronate-liposome depletion is a research tool, not a tattoo therapy). @F f_lattice_fit + @N n6_honest_stance: no natural n=6 invariant; lattice declined as derivation. Complies with florea AGENTS.tape @D g_honesty_obligation_skincare + @F f_unsupported_efficacy."
  complementarity = "Explicitly framed as complementary to the laser sibling, not competing — laser fragments ink, this targets the recapture step laser alone plateaus against."
