#!/usr/bin/env tape

# ══════════════════════════════════════════════════════════════
# TRANSDERMAL-TATTOO-CLEARANCE.tape — architecture-current (v1.2)
# Event history → TRANSDERMAL-TATTOO-CLEARANCE.log.tape sibling
# Split out of TATTOO-REMOVAL.tape 2026-05-15 (skin-penetration modality)
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "transdermal-tattoo-clearance" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · skin-penetration tattoo clearance — intradermal/transdermal delivery acting on the pigment-laden macrophage cycle"
  brief = "MN patch / intradermal depot / liposomal clodronate / iontophoresis-electroporation delivery · immunological (NOT laser) · real cell-bio + real-limits · n=6 not a derivation"
  parent = "dancinlab/florea"
  split-from = "TATTOO-REMOVAL.tape (2026-05-15 — that tape narrowed to laser/device physical fragmentation; this is the skin-penetration / drug-delivery half)"
  sibling = "TATTOO-REMOVAL.tape = the photothermal/photoacoustic device side; the two are complementary, not competing."
  sibling-log = "TRANSDERMAL-TATTOO-CLEARANCE.log.tape"
  scope = "in-silico knowledge SSOT · PRECLINICAL/experimental survey · NOT a marketed therapy / not medical advice"

@N scope_disclaimer := "experimental-scope honesty" :: note [required]
  text = "Skin-penetration tattoo clearance is EXPERIMENTAL. Liposomal-clodronate macrophage depletion is an established research TOOL (van Rooijen), not an approved tattoo treatment. No microneedle / intradermal / iontophoretic tattoo-clearance product is approved as of knowledge cutoff. This is a research-landscape SSOT, not a treatment offering."

@D scope_vs_laser := "skin-penetration ≠ laser device" :: domain [ok]
  this-tape = "Deliver an agent THROUGH/INTO skin to act on the immunological cause of tattoo permanence (pigment-laden dermal macrophages and their re-supply)."
  sibling-tape = "TATTOO-REMOVAL.tape = laser/device physical fragmentation of ink particles (picosecond/R20/PFD photothermolysis)."
  why-split = "Different mechanism, different limit class. Laser fragments ink but fragments are re-phagocytosed; skin-penetration delivery targets that re-capture step. Complementary — a real protocol may combine both, but the modalities have distinct evidence bases and ceilings."
  complementarity = "Laser alone plateaus at the macrophage-recapture cycle ([@x_baranska_2018]); skin-penetration delivery is the route to act on it without systemic dosing."

# ── §1 The immunological premise (why deliver into skin at all) ──────

@D mech_recapture_cycle := "pigment-laden macrophage capture–release cycle" :: mechanism [ok]
  premise = "Tattoo permanence is largely immunological: dermal macrophages phagocytose ink; on macrophage death the pigment is released and RE-CAPTURED by incoming macrophages — a steady-state capture–release cycle, not inert deposition."
  golden-window = "After macrophage turnover the pigment is transiently extracellular before recapture — a finite window in which mobilization/drainage is possible."
  delivery-rationale = "Acting on this cycle (deplete ink-laden macrophages; block monocyte resupply; aid lymphatic drainage) requires getting an agent INTO the dermis where ink + macrophages sit — hence skin-penetration delivery."
  |> "[@x_baranska_2018]"

@D mech_clodronate_selectivity := "liposomal clodronate macrophage depletion" :: mechanism [ok]
  agent = "Clodronate (a bisphosphonate) is membrane-impermeant; encapsulated in liposomes it is taken up by ACTIVELY PHAGOCYTIC cells, intracellularly released, and triggers macrophage apoptosis."
  natural-selectivity = "Cells phagocytosing most avidly take up the most liposomes — ink-laden macrophages are among the most phagocytically active, giving partial intrinsic selectivity."
  established-as = "A standard RESEARCH method for in-vivo macrophage depletion (van Rooijen & Sanders) — repurposing it for tattoo clearance is the experimental hypothesis, not established practice."
  |> "[@x_vanrooijen_1994]"

@D mech_supply_line := "monocyte resupply (CCR2 axis)" :: mechanism [ok]
  role = "Depleting resident ink-laden macrophages is transient — circulating monocytes (CCR2-dependent recruitment via CCL2) repopulate the dermis and resume recapture."
  delivery-hook = "A locally delivered CCR2-axis antagonist could blunt resupply during the drainage window WITHOUT systemic immunosuppression — the rationale for a skin-penetration (not oral) route."
  honesty = "Direct tattoo-context evidence for CCR2 blockade is essentially absent; this is a mechanistic hypothesis, flagged as such (see [@lim_evidence_gap])."

# ── §2 Skin-penetration delivery routes (real physics + limits) ──────

@D route_microneedle := "microneedle (MN) arrays" :: route [ok]
  types = "Solid/coated/dissolving/hollow MN; bypass the stratum corneum to create transient micron-scale channels or deposit a dissolving payload."
  payload = "Clodronate-liposome layer, CCR2-antagonist, hyaluronidase, lymphatic-drainage promoters."
  reach = "Typical MN length ~150–900 µm — reaches viable epidermis/superficial dermis. Tattoo ink sits across the dermis (commonly ~1–2 mm); MN reach vs ink depth is a real geometric constraint — see [@lim_mn_depth]."
  |> "[@x_prausnitz_2008]"

@D route_intradermal_depot := "intradermal injection / nanoparticle depot" :: route [ok]
  form = "Direct intradermal injection of liposomal clodronate or a PLGA-nanoparticle sustained-release depot placed where the ink/macrophages are."
  advantage = "Bypasses the stratum-corneum barrier entirely; depth-targeted; sustained local exposure across the recapture window."
  cost = "Invasive, operator-dependent, area-limited; depot biodistribution and off-target dermal macrophage loss are real concerns ([@lim_selectivity])."

@D route_enhanced_transdermal := "iontophoresis / electroporation / sonophoresis" :: route [ok]
  iontophoresis = "Low current drives charged species (and aids charged ink-fragment mobilization toward lymphatics)."
  electroporation = "Brief high-voltage pulses transiently permeabilize cell/skin membranes — can also force intracellular pigment release."
  sonophoresis = "Low-frequency ultrasound (cavitation) widens the intercellular route and dermal interstitium for particle transit."
  ceiling = "These ENHANCE transport but do not abolish the stratum-corneum/size limits — large/charged biologics still need MN or injection. See [@lim_barrier]."
  |> "[@x_prausnitz_1993]"

# ── §3 Real-limits anchors (LATTICE_POLICY g1 — real-limits-first) ───

@D lim_barrier := "stratum-corneum barrier" :: real-limit [ok required]
  wall = "HARD WALL (passive)"
  statement = "Passive transdermal flux is essentially restricted to small (~<500 Da), modestly lipophilic, uncharged molecules. Clodronate (charged, liposome-packaged) and antibody/peptide antagonists do NOT cross passively."
  consequence = "Any clinically meaningful agent here REQUIRES an active route (MN, intradermal injection, electroporation) — topical cream alone cannot reach dermal macrophages. (Marketed 'tattoo-removal creams' are ineffective for exactly this reason.)"

@D lim_mn_depth := "MN penetration depth vs ink depth" :: real-limit [ok required]
  wall = "GEOMETRIC / SOFT WALL"
  statement = "Microneedle reach (~hundreds of µm) is shallower than the full dermal ink column (~1–2 mm). MN can deliver to the superficial compartment and rely on diffusion/depot spread, but does not directly dose the deepest ink."
  consequence = "MN-only delivery is partial; deep ink favors intradermal injection or combination with laser fragmentation that mobilizes pigment upward."

@D lim_transient_depletion := "macrophage depletion is transient" :: real-limit [ok required]
  wall = "STRUCTURAL (suppressive-not-curative window)"
  statement = "Clodronate depletes existing macrophages but the niche is repopulated by monocyte-derived cells within days; recapture resumes once resupply returns."
  consequence = "Clearance depends on draining freed pigment DURING the depletion+window, not on permanent depletion. A single hit is insufficient; timing/sequencing is the binding variable."

@D lim_selectivity := "off-target macrophage loss" :: real-limit [ok required]
  wall = "IMMUNOLOGICAL COST"
  statement = "Liposomal clodronate depletes phagocytic macrophages broadly, not tattoo-specifically; local dermal innate-immune competence is transiently reduced."
  consequence = "Dose/area must be bounded; infection-risk and wound-healing trade-offs are real and unquantified for this indication."

@D lim_evidence_gap := "preclinical-only evidence base" :: real-limit [ok required]
  wall = "HARD WALL (translational)"
  statement = "No controlled human trial establishes skin-penetration delivery as a tattoo-clearance therapy. The components (clodronate liposomes, microneedles, iontophoresis) are individually well characterized; THIS combination for tattoo removal is hypothesis-stage."
  consequence = "All efficacy statements here are mechanistic plausibility, not outcomes. Honest framing is mandatory ([@f_lattice_fit], @N scope_disclaimer)."

# ── §4 n=6 lattice stance (HONEST — no natural invariant) ────────────

@F f_lattice_fit := "lattice-fit-on-transdermal-tattoo-biology" :: governance [required deny:write]
  pattern = "Deriving clearance efficacy / session counts / penetration depth / dosing FROM the n=6 lattice (σ=12, τ=4, φ=2, J₂=24)."
  why = "florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare: efficacy must cite the actual pharmacology/skin-physics, not the lattice. (The pre-split TATTOO-REMOVAL body's σ/(σ-φ) efficacy-ratio phrasing is exactly this anti-pattern.)"
  remedy = "Cite real sources (Baranska 2018, van Rooijen 1994, Prausnitz). Any lattice coincidence is observation only, never derivation."

@N n6_honest_stance := "transdermal tattoo clearance has no natural n=6 invariant" :: note [required]
  text = "Stated plainly: this domain exposes NO natural n=6 invariant. Delivery-route count, agent count, and skin-layer count are not lattice-constrained (skin layers are conventionally 3 — epidermis/dermis/hypodermis — a histology fact, not a φ·n derivation). Per LATTICE_POLICY g1/g2 + lattice-as-tool, the lattice is declined as a derivation tool here. Mirrors the corrective applied across the 2026-05-15 Floréa honesty cycle."

# ── §5 Verifiable predictions (real, falsifiable — NOT lattice) ──────

@D tp_1 := "TP-1 passive topical insufficiency" :: prediction [ok]
  claim = "A topical (no MN / no injection / no iontophoresis) clodronate or CCR2-antagonist preparation does NOT reach dermal ink-laden macrophages at a functional dose."
  falsifier = "If a purely passive topical preparation demonstrably depletes dermal ink-laden macrophages in a controlled model, [@lim_barrier] is wrong."
  source = "[@x_prausnitz_2008]"

@D tp_2 := "TP-2 depletion transience" :: prediction [ok]
  claim = "Single-dose liposomal-clodronate dermal macrophage depletion reverses (repopulates) within days; recapture resumes without resupply blockade."
  falsifier = "If single-dose depletion is durable for weeks without resupply control, [@lim_transient_depletion] is wrong."
  source = "[@x_vanrooijen_1994]"

@D tp_3 := "TP-3 combination > monotherapy" :: prediction [ok]
  claim = "Laser fragmentation + timed skin-penetration delivery clears more pigment than either alone (laser mobilizes pigment upward into MN reach during the depletion window)."
  falsifier = "If combination shows no benefit over best monotherapy in a controlled model, the complementarity premise (@D scope_vs_laser) is wrong."

# ── §6 Cross-links ────────────────────────────────────────────────────

@X x_tattoo_laser_sibling := "TATTOO-REMOVAL.tape" :: sibling-tape [active]
  scope = "split sibling 2026-05-15 — laser/device photothermal/photoacoustic fragmentation. Its macrophage-recapture limit is precisely the gap THIS tape's skin-penetration delivery targets; the two are complementary."

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §7 External citations (real, landmark literature) ────────────────

@X x_baranska_2018 := "Baranska A et al 2018" :: literature [active]
  ref = "Baranska A et al. Unappreciated role of dermal macrophages in tattoo stability; pigment capture–release cycle on macrophage death/renewal. J Exp Med 2018;215:1115–1133."

@X x_vanrooijen_1994 := "Van Rooijen N & Sanders A 1994" :: literature [active]
  ref = "Van Rooijen N, Sanders A. Liposome-mediated depletion of macrophages: mechanism of action, preparation of liposomes and applications. J Immunol Methods 1994;174:83–93. (clodronate-liposome macrophage depletion — the canonical method)"

@X x_prausnitz_2008 := "Prausnitz MR & Langer R 2008" :: literature [active]
  ref = "Prausnitz MR, Langer R. Transdermal drug delivery. Nat Biotechnol 2008;26:1261–1268. (stratum-corneum barrier, microneedle and enhancement routes — review)"

@X x_prausnitz_1993 := "Prausnitz MR et al 1993" :: literature [active]
  ref = "Prausnitz MR et al. Electroporation of mammalian skin: a mechanism to enhance transdermal drug delivery. Proc Natl Acad Sci USA 1993;90:10504–10508."
