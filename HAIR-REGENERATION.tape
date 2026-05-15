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

# ══════════════════════════════════════════════════════════════
# HAIR-REGENERATION.tape — architecture-current (editable per v1.2)
# Event history → HAIR-REGENERATION.log.tape sibling
# SCOPE NARROWED 2026-05-15: regeneration TECHNOLOGY (de-novo follicle
# neogenesis). AGA pharmacology split out → ANDROGENETIC-ALOPECIA.tape.
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hair-regeneration" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · hair-regeneration TECHNOLOGY — de-novo follicular neogenesis & follicle bioengineering"
  brief = "creating/restoring follicles where viable ones are gone (NOT suppressing DHT) · real cell-bio + real-limits · n=6 not used as derivation"
  parent = "dancinlab/florea"
  scope-narrowed = "2026-05-15 — was a lattice-tautology stub conflating AGA + regeneration; pharmacological AGA management moved to ANDROGENETIC-ALOPECIA.tape (see HAIR-REGENERATION.log.tape audit + supersede events)"
  sibling-log = "HAIR-REGENERATION.log.tape"
  scope = "in-silico knowledge SSOT · preclinical/experimental survey · NOT a marketed therapy / not medical advice"

@N scope_disclaimer := "experimental-scope honesty" :: note [required]
  text = "Every approach in this tape is preclinical or early clinical-stage as of knowledge cutoff. NO technology here delivers scalable de-novo human hair-follicle neogenesis as an approved product. This is a research-landscape SSOT, not a treatment offering."

@D scope_vs_aga := "regeneration ≠ AGA pharmacology" :: domain [ok]
  this-tape = "Create/restore hair follicles de novo (neogenesis, follicle bioengineering, cell therapy)."
  other-tape = "ANDROGENETIC-ALOPECIA.tape = pharmacologically slow/halt/partially reverse DHT-driven miniaturization of EXISTING follicles."
  why-split = "Different problem, different ceiling. AGA therapy CANNOT add follicles ([@x_aga_sibling] @D lim_donor_finitude). Regeneration targets exactly that gap — and is itself unsolved at human scale."
  complementarity = "A fully solved AGA tape still leaves Norwood-VII (no viable follicles) untreatable without regeneration. That is this tape's reason to exist."

# ── §1 Biology of follicle morphogenesis (what must be recreated) ─────

@D bio_em_crosstalk := "epithelial–mesenchymal cross-talk" :: mechanism [ok]
  core = "Hair-follicle formation requires reciprocal signaling between epithelial (placode) and mesenchymal (dermal condensate → dermal papilla, DP) compartments — Wnt/β-catenin, Shh, BMP, FGF, Notch."
  dp-role = "The dermal papilla is the inductive 'organizer' — its signaling determines follicle formation, size, and cycling."
  implication = "Regeneration is mini-ORGAN reconstruction (epithelium + mesenchyme + cycling + pigment + sebaceous gland + innervation), not delivery of one cell type."

@D bio_stem_cells := "hair-follicle stem cell pools" :: mechanism [ok]
  bulge = "Bulge stem cells (label-retaining; mouse K15+/CD34+, LGR5) drive cyclic regeneration of the lower follicle."
  dp-progenitors = "DP/dermal sheath supply the inductive mesenchyme; sheath cells can replenish DP."
  discovery = "Bulge label-retaining cells — Cotsarelis et al. 1990."
  |> "[@x_cotsarelis_1990]"

@D bio_wnt := "Wnt/β-catenin — placode initiation & DP induction" :: mechanism [ok]
  role = "Epithelial Wnt/β-catenin activation is the master ON switch for placode formation; mesenchymal β-catenin in the dermal condensate is required for dermal-papilla fate. Stabilized epithelial β-catenin can drive de-novo follicle formation."
  evidence = "Gain/loss-of-function mouse genetics: forced epithelial β-catenin induces ectopic follicles; loss blocks follicle morphogenesis (Gat 1998; Huelsken 2001; Andl/Millar 2002)."
  regen-link = "WIHN ([@appr_wihn]) re-runs this embryonic Wnt program in adult wound centers."
  |> "[@x_gat_1998]"
  |> "[@x_andl_2002]"

@D bio_shh := "Sonic hedgehog — placode downgrowth & DP maturation" :: mechanism [ok]
  role = "After placode commitment, epithelial SHH signals to the mesenchyme to drive follicle downgrowth and dermal-papilla maturation/proliferation; Shh-null follicles arrest at an early germ stage."
  evidence = "Shh and Gli pathway loss-of-function arrest follicle development past the placode stage (St-Jacques 1998; Chiang 1999)."
  regen-link = "A reconstructed follicle germ ([@appr_follicle_germ]) must re-establish this epithelial→mesenchymal SHH axis to progress beyond a hair peg."
  |> "[@x_stjacques_1998]"

@D bio_bmp_fgf := "BMP / FGF — placode spacing & the inhibitory field" :: mechanism [ok]
  role = "BMP signaling is a lateral inhibitor that restricts and spaces placodes (an activator–inhibitor / reaction–diffusion-type patterning field); FGF (e.g. FGF20 in the placode) is a pro-condensate activator. The Wnt/EDA-activator vs BMP-inhibitor balance sets follicle density and array."
  evidence = "BMP inhibition (noggin) widens/adds placodes; FGF20 marks the placode and is required for dermal-condensate formation (Botchkarev 1999; Huh/Millar 2013)."
  regen-link = "Density and orientation in any engineered graft ([@lim_miniorgan]) are governed by recreating this activator/inhibitor field, not by a fixed number."
  |> "[@x_botchkarev_1999]"

@D bio_notch := "Notch — lineage commitment within the follicle" :: mechanism [ok]
  role = "Notch signaling is largely dispensable for placode initiation but required for differentiation/maintenance of inner-follicle lineages and hair-shaft integrity; perturbation yields cyclic hair loss and lineage defects."
  evidence = "Follicular Notch loss-of-function disrupts hair-shaft lineages and produces alopecia phenotypes (Pan 2004; Vauclair 2005)."
  regen-link = "Forming a follicle germ is necessary but not sufficient — Notch-dependent lineage maturation is part of the unsolved mini-organ layer ([@lim_miniorgan])."
  |> "[@x_pan_2004]"

@D bio_dp_organizer := "the dermal papilla as inductive organizer" :: mechanism [ok]
  core = "The DP is the signaling hub that integrates Wnt/SHH/BMP/FGF/Notch inputs; classic recombination experiments show DP/dermal cells can INSTRUCT non-follicular epithelium to form follicles (dermal-papilla inductivity is the operational definition of regenerative competence)."
  evidence = "Dermal-papilla / dermal-sheath recombination and DP transplantation induce new follicles in receptive epithelium (Jahoda/Oliver lineage of experiments, 1980s–1990s)."
  consequence = "Why [@lim_inductivity] is the binding constraint: losing DP inductive signature on 2D culture removes exactly this organizer function."
  |> "[@x_jahoda_1984]"

# ── §2 Regeneration approaches (real, with landmark citations) ────────

@D appr_wihn := "wound-induced hair neogenesis (WIHN)" :: approach [ok]
  finding = "Adult mouse skin regenerates NEW follicles de novo in the center of large full-thickness wounds, via Wnt/β-catenin reactivation of an embryonic-like program."
  human-gap = "Robust in mouse; marginal-to-absent in adult human at clinical scale. Wound size threshold + species difference unresolved."
  status = "Proof-of-principle that adult skin retains latent neogenic competence — not a human therapy."
  |> "[@x_ito_2007]"

@D appr_dp_culture := "dermal-papilla cell therapy" :: approach [ok]
  problem = "Cultured human DP cells rapidly LOSE hair-inductive capacity on 2D passage (inductive gene-expression signature drifts)."
  partial-fix = "3D spheroid culture restores a substantial fraction of inductivity → de-novo human hair growth in xenograft assay (Higgins et al.)."
  residual = "Restoration is partial, not complete; scale-up + reproducible potency are unsolved. See [@lim_inductivity]."
  industry = "Epibiotech (KR, EPI-001), HairClone (UK, banking + DP multiplication) operate in this lane (preclinical/early-clinical)."
  |> "[@x_higgins_2013]"

@D appr_follicle_germ := "bioengineered follicle germ" :: approach [ok]
  finding = "Reconstituted epithelial+mesenchymal 'follicle germ' transplanted into mouse skin formed FULLY functional follicles — correct structure, hair-shaft cycling, piloerection, innervation."
  human-gap = "Demonstrated with mouse/embryonic cells; translating to scalable adult-human autologous sources is the open problem."
  industry = "RIKEN / OrganTech (Tsuji program) pursued clinical translation of follicle-germ transplantation."
  |> "[@x_toyoshima_2012]"

@D appr_ipsc_organoid := "iPSC-derived skin/follicle organoids" :: approach [ok]
  finding = "Human pluripotent stem cells self-organized into skin organoids bearing pigmented hair follicles with sebaceous glands and nerves."
  human-gap = "Organoids form in vitro / as cysts; controlled, oriented, dense scalp integration in vivo is unsolved. Tumorigenicity/safety of iPSC products is a regulatory gate."
  industry = "Stemson Therapeutics (iPSC follicle + scaffold for hair direction), dNovo (direct reprogramming) — preclinical."
  |> "[@x_lee_2020]"

@D appr_bioprint := "microfabricated / 3D-printed follicle units" :: approach [ok]
  finding = "Biomimetic microwell molds drive DP-cell aggregation into inductive units → human hair-follicle formation in a humanized graft model (developmental-engineering approach)."
  status = "Manufacturing-oriented route to standardize inductive units; still preclinical; density/orientation/cost open."
  |> "[@x_abaci_2018]"

# ── §2b Clinical/industry-stage landscape (real programs, honest stage) ─

@N industry_stage_disclaimer := "no approved regeneration product exists" :: note [required]
  text = "The programs below are publicly described preclinical or early-clinical efforts. As of knowledge cutoff NONE has an approved hair-regeneration product, and no pivotal efficacy outcome is asserted here. Stage labels reflect the development phase a program describes itself in, NOT a validated result. No trial outcomes, endpoints, or approvals are claimed."

@D ind_stemson := "Stemson Therapeutics — iPSC-derived follicles + scaffold" :: industry [ok]
  approach-class = "iPSC → epithelial + dermal-papilla lineages assembled on a biodegradable scaffold that controls hair shaft DIRECTION (a stated answer to the orientation problem of [@lim_miniorgan])."
  basis = "Builds on iPSC follicle/organoid biology ([@appr_ipsc_organoid]) toward an allogeneic/autologous cell-therapy product."
  stage = "PRECLINICAL (preclinical large-animal/grafting work publicly described; no approved product, no efficacy claim here)."

@D ind_dnovo := "dNovo — direct cell reprogramming to hair-forming cells" :: industry [ok]
  approach-class = "Reprogramming of accessible somatic cells toward hair-follicle-forming cell identities, aiming to supply autologous inductive cells without a donor-finitude ceiling."
  basis = "Targets [@lim_epithelial_source] / [@lim_inductivity] by manufacturing the missing inductive cell types rather than expanding scarce DP."
  stage = "PRECLINICAL / EARLY (publicly described early-stage company; no approved product, no efficacy claim here)."

@D ind_epibiotech := "Epibiotech — dermal-papilla cell therapy" :: industry [ok]
  approach-class = "Autologous DP-cell therapy lane (the [@appr_dp_culture] approach) — isolate, expand, and re-deliver inductive DP-derived cells."
  basis = "Inherits the [@lim_inductivity] potency constraint; spheroid/3D culture is the standard mitigation."
  stage = "PRECLINICAL / EARLY-CLINICAL (company-stated; no approved product, no efficacy or trial outcome claimed here)."

@D ind_hairclone := "HairClone — follicle banking + DP multiplication" :: industry [ok]
  approach-class = "Cryobank a patient's own follicles, then multiply DP/dermal-sheath cells for later autologous re-injection (cell-bank + [@appr_dp_culture] potency lane)."
  basis = "Banking addresses donor-finitude timing; it does NOT remove the [@lim_inductivity] potency wall."
  stage = "EARLY-CLINICAL (autologous cell-therapy service publicly described under applicable cell-therapy frameworks; no approved efficacy claim here)."

@D ind_organtech := "RIKEN / OrganTech (Tsuji program) — follicle-germ transplantation" :: industry [ok]
  approach-class = "Clinical translation of bioengineered follicle-germ transplantation ([@appr_follicle_germ]) — reconstitute an epithelial+mesenchymal germ and transplant it."
  basis = "Direct descendant of [@x_toyoshima_2012]; the open problem is scalable adult-human autologous epithelial + DP sources ([@lim_epithelial_source])."
  stage = "PRECLINICAL → EARLY-CLINICAL (academic-industrial translation program publicly described; no approved product or efficacy result claimed here)."

# ── §3 Real-limits anchors (LATTICE_POLICY g1 — real-limits-first) ────

@D lim_no_scalable_neogenesis := "no approved scalable human neogenesis" :: real-limit [ok required]
  wall = "HARD WALL (as of knowledge cutoff)"
  statement = "No technology delivers scalable, oriented, cycling, pigmented de-novo human scalp follicles as an approved product. All approaches are preclinical or early-clinical."
  consequence = "Regeneration is not yet a clinical alternative to transplantation; it is the research frontier that, if solved, removes the donor-finitude conservation limit of [@x_aga_sibling]."

@D lim_inductivity := "DP inductivity loss on expansion" :: real-limit [ok required]
  wall = "SOFT WALL"
  statement = "Human DP cells lose hair-inductive potency on 2D expansion; 3D/microenvironment partially restores it but not fully or reproducibly at manufacturing scale."
  consequence = "Cell-therapy potency, not cell quantity, is the binding constraint."

@D lim_miniorgan := "mini-organ integration" :: real-limit [ok required]
  wall = "HARD WALL (functional)"
  statement = "A cosmetically useful follicle needs correct direction, density, pigmentation, cyclic regeneration, sebaceous gland, and innervation — full mini-organ integration, not mere follicle presence."
  consequence = "'Follicles formed' in a dish ≠ a usable hairline. Functional/aesthetic integration is the hardest unsolved layer."

@D lim_safety_scale := "safety + manufacturing scale" :: real-limit [ok required]
  wall = "REGULATORY / ECONOMIC"
  statement = "iPSC-derived products carry tumorigenicity risk requiring rigorous clearance; per-unit manufacturing must reach ≈10⁴–10⁵ follicles/scalp at viable cost."
  consequence = "Even a biologically working method faces a safety + unit-economics gate before it is a product."

@D lim_epithelial_source := "autologous inducible epithelial source" :: real-limit [ok required]
  wall = "HARD WALL (cell-source)"
  statement = "Follicle neogenesis needs BOTH an inductive mesenchyme (DP) AND a competent epithelial partner. Adult human inter-follicular keratinocytes are not reliably trichogenic, and patient-matched, expandable, hair-competent epithelial stem cells are not an established product input. iPSC supplies both lineages but reintroduces the [@lim_safety_scale] tumorigenicity gate."
  consequence = "The DP-only cell-therapy lane ([@appr_dp_culture]) is bottlenecked on the epithelial half of the organ; solving inductivity alone does not solve the source problem."
  basis = "Reciprocal epithelial–mesenchymal requirement of [@bio_em_crosstalk] / [@bio_dp_organizer]."

@D lim_cycling_orientation := "hair-cycling control & oriented density at scale" :: real-limit [ok required]
  wall = "HARD WALL (functional/aesthetic)"
  statement = "A usable result requires follicles that (a) enter and sustain the physiological anagen→catagen→telogen cycle, (b) emerge at correct angle/direction, and (c) reach native scalp density (~tens of follicles/cm²) reproducibly over a large area. In-vitro/graft models routinely produce disoriented, sparse, or non-cycling follicles."
  consequence = "Distinct from 'a follicle formed' ([@lim_miniorgan]): cycling + orientation + density at clinical scale is a separate, currently-unmet engineering layer governed by the BMP/FGF activator–inhibitor field ([@bio_bmp_fgf]) and DP organizer dose ([@bio_dp_organizer])."

# ── §4 n=6 lattice stance (HONEST — no natural invariant) ─────────────

@F f_lattice_fit := "lattice-fit-on-regeneration-biology" :: governance [required deny:write]
  pattern = "Deriving regeneration efficacy / follicle counts / timelines FROM the n=6 lattice."
  why = "The pre-narrowing tape did exactly this (σ·(σ-φ)/2 → '90% regrowth'); florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid it."
  remedy = "Cite the real cell-biology literature in this tape's @X entries. Lattice is not a derivation here."

@N n6_honest_stance := "regeneration tech has no natural n=6 invariant" :: note [required]
  text = "Stated plainly: hair-regeneration technology exposes NO natural n=6 invariant. Signaling-pathway count, approach count, and cell-source count are not lattice-constrained. Per LATTICE_POLICY g1/g2 + lattice-as-tool, the lattice is declined as a derivation tool here. This is the corrective for the audited pre-split violation (see HAIR-REGENERATION.log.tape)."

# ── §5 Verifiable predictions (real, falsifiable — NOT lattice) ───────

@D tp_1 := "TP-1 species gap in WIHN" :: prediction [ok]
  claim = "Unassisted WIHN yields far fewer neogenic follicles per unit wound area in adult human than in adult mouse."
  falsifier = "If a controlled human study shows mouse-equivalent spontaneous WIHN density, [@appr_wihn] human-gap is wrong."
  source = "[@x_ito_2007]"

@D tp_2 := "TP-2 2D inductivity decay" :: prediction [ok]
  claim = "Human DP hair-inductive capacity declines with successive 2D passages; 3D culture recovers part (not all) of it."
  falsifier = "If 2D-passaged human DP cells retain full inductivity without 3D rescue, [@lim_inductivity] is wrong."
  source = "[@x_higgins_2013]"

@D tp_3 := "TP-3 integration ≫ formation" :: prediction [ok]
  claim = "Across approaches, the limiting failure is functional/aesthetic integration (direction, density, cycling), not mere follicle formation."
  falsifier = "If any approach reports clinically dense, correctly oriented, cycling human scalp coverage at scale, [@lim_miniorgan] is wrong."

# ── §6 Cross-links ────────────────────────────────────────────────────

@X x_aga_sibling := "ANDROGENETIC-ALOPECIA.tape" :: sibling-tape [active]
  scope = "split sibling 2026-05-15 — DHT-suppression pharmacology for EXISTING follicles. Its @D lim_donor_finitude (HARD WALL: no scalable de-novo neogenesis) is precisely the gap THIS tape addresses."

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §7 External citations (real, landmark literature) ─────────────────

@X x_cotsarelis_1990 := "Cotsarelis G et al 1990" :: literature [active]
  ref = "Cotsarelis G, Sun TT, Lavker RM. Label-retaining cells reside in the bulge area of pilosebaceous unit. Cell 1990;61:1329–1337."

@X x_ito_2007 := "Ito M et al 2007" :: literature [active]
  ref = "Ito M et al. Wnt-dependent de novo hair follicle regeneration in adult mouse skin after wounding. Nature 2007;447:316–320."

@X x_toyoshima_2012 := "Toyoshima KE et al 2012" :: literature [active]
  ref = "Toyoshima KE et al. Fully functional hair follicle regeneration through the rearrangement of stem cells and their niches. Nat Commun 2012;3:784."

@X x_higgins_2013 := "Higgins CA et al 2013" :: literature [active]
  ref = "Higgins CA et al. Microenvironmental reprogramming by three-dimensional culture enables dermal papilla cells to induce de novo human hair-follicle growth. Proc Natl Acad Sci USA 2013;110:19679–19688."

@X x_abaci_2018 := "Abaci HE et al 2018" :: literature [active]
  ref = "Abaci HE et al. Tissue engineering of human hair follicles using a biomimetic developmental approach. Nat Commun 2018;9:5301."

@X x_lee_2020 := "Lee J et al 2020" :: literature [active]
  ref = "Lee J et al. Hair-bearing human skin generated entirely from pluripotent stem cells. Nature 2020;582:399–404."

@X x_gat_1998 := "Gat U et al 1998" :: literature [active]
  ref = "Gat U, DasGupta R, Degenstein L, Fuchs E. De novo hair follicle morphogenesis and hair tumors in mice expressing a truncated β-catenin in skin. Cell 1998;95:605–614."

@X x_andl_2002 := "Andl T et al 2002" :: literature [active]
  ref = "Andl T, Reddy ST, Gaddapara T, Millar SE. WNT signals are required for the initiation of hair follicle development. Dev Cell 2002;2:643–653."

@X x_stjacques_1998 := "St-Jacques B et al 1998" :: literature [active]
  ref = "St-Jacques B et al. Sonic hedgehog signaling is essential for hair development. Curr Biol 1998;8:1058–1068. (See also Chiang C et al. Dev Biol 1999 — Shh-null follicle arrest.)"

@X x_botchkarev_1999 := "Botchkarev VA et al 1999" :: literature [active]
  ref = "Botchkarev VA et al. Noggin is a mesenchymally derived stimulator of hair-follicle induction. Nat Cell Biol 1999;1:158–164. (BMP as a lateral inhibitor of placode spacing; complements FGF20 placode-marker work, Huh SH et al. Genes Dev 2013.)"

@X x_pan_2004 := "Pan Y et al 2004" :: literature [active]
  ref = "Pan Y et al. γ-secretase functions through Notch signaling to maintain skin appendages but is not required for their patterning or initial morphogenesis. Dev Cell 2004;7:731–743. (Notch in follicular lineage maintenance; see also Vauclair S et al. 2005.)"

@X x_jahoda_1984 := "Jahoda CAB, Horne KA, Oliver RF 1984" :: literature [active]
  ref = "Jahoda CAB, Horne KA, Oliver RF. Induction of hair growth by implantation of cultured dermal papilla cells. Nature 1984;311:560–562. (Foundational dermal-papilla inductivity / recombination lineage of experiments, Jahoda & Oliver, 1980s–1990s.)"
