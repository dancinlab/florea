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
# COSMETIC-SURGERY.tape — architecture-current (editable per v1.2)
# Event history → COSMETIC-SURGERY.log.tape sibling
# REWRITTEN 2026-05-15: was a .md→.tape lattice-tautology migration
# stub. Now a real aesthetic/cosmetic-surgery knowledge SSOT with
# cited surgical biology + real-limits. n=6 NOT used as derivation.
# (Same remediation pattern applied to HAIR-REGENERATION.tape.)
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cosmetic-surgery" :: identity-claim [d=2026-05-15 active]
  kind = "Floréa 🌸 verb · aesthetic / cosmetic surgery — surgical procedures, wound-healing biology, vascular/flap physiology & their real engineering limits"
  brief = "knowledge SSOT for the surgical-aesthetic domain (rhinoplasty · blepharoplasty · rhytidectomy · liposuction · fat grafting · implants · scar revision) grounded in real surgical literature · NOT medical advice · n=6 not used as derivation"
  parent = "dancinlab/florea"
  prior-parent = "dancinlab/hexa-bio (migrated 2026-05-15 per DECOMPOSITION_PLAN.md)"
  scope-rewritten = "2026-05-15 — was a lattice-tautology .md→.tape migration stub (generic 'per-domain substrate · n=6 mapping' brief; σ/τ/φ-derived outcome rows; zero surgery, zero citations). Rewritten with real cited surgical science; lattice demoted to observation-not-derivation (no natural n=6 invariant — stated honestly). See COSMETIC-SURGERY.log.tape audit + supersede events."
  sibling-log = "COSMETIC-SURGERY.log.tape"
  scope = "in-silico knowledge SSOT · surgical-domain survey · NOT medical advice · NOT a procedure recommendation · NOT a safety/efficacy claim"

@N scope_disclaimer := "knowledge-SSOT honesty — not medical advice" :: note [required]
  text = "This tape is a knowledge SSOT for the cosmetic/aesthetic-surgery domain. It is NOT medical advice, NOT a procedure recommendation, NOT a safety or efficacy claim, and NOT a substitute for clinical judgement. Real cosmetic surgery requires evaluation, planning, and execution by a licensed, board-certified surgeon under regulated clinical conditions; outcomes are patient-specific and carry material risk. Quantitative content is kept qualitative / range-level; no patient-outcome rates are asserted."

# ── §1 Procedures (real surgical categories) ──────────────────────────

@D proc_rhinoplasty := "rhinoplasty — nasal reshaping" :: procedure [ok]
  what = "Reshaping of the bony-cartilaginous nasal framework (dorsum, tip, septum, osteotomies) for aesthetic and/or functional (airway) goals; open vs closed approach."
  key-tradeoff = "Aesthetic change is constrained by skin-soft-tissue envelope thickness and the need to preserve structural support and airway patency; over-resection risks collapse and deformity."
  revision-reality = "Rhinoplasty has one of the higher revision propensities in aesthetic surgery because long-term healing/contraction of the soft-tissue envelope over the reshaped framework is only partly predictable ([@lim_scar_inevitable])."
  |> "[@x_gunter_dallas]"

@D proc_blepharoplasty := "blepharoplasty — eyelid surgery" :: procedure [ok]
  what = "Removal/repositioning of redundant upper- or lower-eyelid skin, orbicularis muscle, and herniated orbital fat; periorbital rejuvenation."
  key-tradeoff = "Conservative tissue removal is the safety rule — over-resection of skin or fat causes lagophthalmos, ectropion, hollowing, or a dysfunctional lid; fat is now often repositioned rather than excised."
  notable-risk = "Retrobulbar hematoma is a rare but sight-threatening emergency requiring immediate decompression."
  |> "[@x_mathes_plastic_surgery]"

@D proc_rhytidectomy := "rhytidectomy — facelift (SMAS)" :: procedure [ok]
  what = "Repositioning of ptotic facial soft tissue by elevating and resuspending the superficial musculoaponeurotic system (SMAS) with redraping of the skin flap; addresses jowls/midface descent."
  anatomic-anchor = "Modern technique is defined around the SMAS layer and the danger zones of the facial nerve branches (esp. the temporal/frontal and marginal mandibular branches)."
  key-tradeoff = "Skin-flap viability vs tension: excessive skin tension or thin/over-undermined flaps risk flap necrosis ([@lim_flap_perfusion]) and widened scars; the SMAS bears the lift load to spare the skin."
  |> "[@x_mitz_peyronie_smas]"

@D proc_liposuction := "liposuction — adipose contouring" :: procedure [ok]
  what = "Mechanical aspiration of subcutaneous fat through cannulae to recontour body regions; commonly performed under tumescent local anesthesia."
  not-weight-loss = "A contouring procedure, not an obesity treatment; deep-vs-superficial plane discipline and leaving a viable fat blanket protect the overlying skin/contour."
  safety-frame = "Safety is dominated by the tumescent lidocaine dose ceiling and total aspirate-volume limits, plus fat-/thromboembolism risk ([@lim_anesthetic_volume])."
  |> "[@x_klein_tumescent]"

@D proc_fat_grafting := "autologous fat grafting (lipofilling)" :: procedure [ok]
  what = "Harvest of autologous adipose by low-trauma liposuction, processing, and reinjection in small aliquots to restore volume (face, breast, body) — Coleman structural fat grafting technique."
  technique-principle = "Atraumatic harvest + diffuse small-parcel placement maximizes contact with vascularized recipient tissue so grafted adipocytes can revascularize before necrosing."
  key-tradeoff = "Graft 'take' is variable and partial; a fraction of injected volume resorbs, so overcorrection/serial sessions are common and final volume is not fully predictable ([@lim_fat_graft_take])."
  |> "[@x_coleman_fat]"

@D proc_implants := "alloplastic implants — breast & facial" :: procedure [ok]
  what = "Placement of biocompatible prostheses (e.g. silicone/saline breast implants; chin/malar facial implants) for volume/projection augmentation."
  foreign-body-reality = "Every implant elicits a fibrous capsule (normal foreign-body response); pathological tightening of that capsule (capsular contracture) is a defining long-term complication ([@lim_complication_classes])."
  key-tradeoff = "Implants are not lifetime devices — malposition, rupture, contracture, and revision over time are expected device-lifecycle events, not anomalies."
  |> "[@x_mathes_plastic_surgery]"

@D proc_scar_revision := "scar revision" :: procedure [ok]
  what = "Surgical/adjunctive techniques (re-excision, Z-/W-plasty, geometric broken-line closure, dermabrasion, laser, intralesional steroid) to improve, not erase, an unfavorable scar."
  hard-truth = "Scar revision REDIRECTS or refines a scar (tension vector, orientation, width) — it cannot regenerate scar-free skin. The end state is always another scar ([@lim_scar_inevitable])."
  hypertrophic-keloid = "Hypertrophic scars and keloids are dysregulated remodeling outcomes (excess collagen deposition); keloid recurrence after excision is high without adjunctive therapy."
  |> "[@x_mustoe_scar]"

# ── §2 Wound-healing biology (governs every result above) ─────────────

@D heal_cascade := "wound healing — the four overlapping phases" :: mechanism [ok]
  phases = "Hemostasis (platelet plug, fibrin clot, vasoconstriction) → Inflammation (neutrophils then macrophages debride and orchestrate) → Proliferation (fibroblast migration, granulation tissue, angiogenesis, re-epithelialization, wound contraction by myofibroblasts) → Remodeling (collagen III→I conversion, cross-linking, scar maturation over months–years)."
  why-it-matters = "Every cosmetic-surgery outcome is the integral of this cascade over time — early appearance is not the final result; scar maturation/contraction can take 12+ months and is only partly controllable."
  |> "[@x_mathes_plastic_surgery]"

@D heal_scar_not_regen := "adult skin heals by SCAR, not regeneration" :: mechanism [ok]
  core = "Adult mammalian dermis repairs full-thickness injury with fibrotic SCAR (disorganized collagen, lost adnexa/elastin architecture) — it does NOT regenerate the original tissue. Fetal early-gestation skin can heal scarlessly, but the adult does not retain this program."
  consequence = "No incision in cosmetic surgery is 'scarless' — only well-planned (hidden, low-tension, well-oriented) scars. This is the biological floor under [@lim_scar_inevitable]."
  remodeling-ceiling = "Remodeling improves but never restores native tensile strength — healed skin plateaus well below intact-skin strength; collagen reorganization is incremental, not regenerative."
  |> "[@x_gurtner_review]"

@D heal_tension := "wound tension governs scar quality" :: mechanism [ok]
  core = "Mechanical tension across a closing wound is a primary driver of scar width and hypertrophy — high resting/closing tension recruits myofibroblasts and promotes excess collagen; low-tension, layered closure along relaxed skin-tension lines yields the finest achievable scar."
  surgical-lever = "Scar quality is influenced (incision placement along tension lines, deep-layer tension offloading, flap design) but never eliminated — this is the actionable half of [@lim_scar_inevitable]."
  |> "[@x_mustoe_scar]"

@D heal_patient_factors := "host factors cap healing capacity" :: mechanism [ok]
  core = "Wound healing is rate- and quality-limited by host biology: tobacco smoking (nicotine vasoconstriction + carbon-monoxide hypoxia) markedly impairs flap perfusion and raises necrosis/dehiscence risk; diabetes/hyperglycemia, peripheral vascular disease, malnutrition, corticosteroids/immunosuppression, prior radiation, and advanced age all degrade the proliferative response."
  surgical-consequence = "Smoking is the single most consistently cited modifiable risk for flap and wound complications in elective aesthetic surgery; perioperative cessation is a standard requirement ([@lim_patient_factor])."
  |> "[@x_mathes_plastic_surgery]"

# ── §3 Vascular & flap biology (the perfusion ceiling) ────────────────

@D vasc_angiosome := "the angiosome concept (Taylor & Palmer)" :: mechanism [ok]
  core = "The body's soft tissue is organized into ~angiosomes — 3-D blocks of skin-to-bone supplied by a named source artery and its accompanying vein. Adjacent angiosomes connect through reduced-caliber 'choke' vessels."
  surgical-meaning = "A flap raised on one source vessel reliably perfuses its own angiosome plus, dynamically, ONE adjacent angiosome across choke vessels; tissue beyond that is at ischemic risk. This anatomic map underpins safe flap design and the perfusion ceiling on flap dimensions."
  discovery = "Taylor & Palmer described the angiosome concept and mapped the body's vascular territories (1987)."
  |> "[@x_taylor_palmer_1987]"

@D vasc_flap_perfusion := "perfusion-limited flap dimensions & ischemia" :: mechanism [ok]
  core = "A flap's safe length/area is bounded by the perfusion territory of its pedicle, not by how much tissue is geometrically available. Random-pattern flaps have conservative safe length-to-width limits; axial/perforator flaps extend further by capturing a named vessel — but every flap has a vascular distal limit beyond which the tip becomes ischemic."
  failure-mode = "Exceeding the perfusion territory, excessive inset tension, kinking/compression of the pedicle, or venous congestion → partial or total flap necrosis. Necrosis is the dominant flap-failure mode and is largely a perfusion-geometry problem ([@lim_flap_perfusion])."
  |> "[@x_taylor_palmer_1987]"

# ── §4 Real-limits anchors (LATTICE_POLICY g1 — real-limits-first) ────

@D lim_scar_inevitable := "scar inevitability in adult skin" :: real-limit [ok required]
  wall = "HARD WALL (biological)"
  statement = "Adult full-thickness skin injury heals by fibrotic scar, not regeneration. No cosmetic-surgical incision or scar-revision technique produces scar-free skin; the achievable goal is a minimized, well-positioned, matured scar."
  consequence = "'Scarless surgery' is a marketing phrase, not a biological outcome. Every claimed cosmetic improvement is bounded by the scar this hard wall guarantees."
  basis = "Adult-vs-fetal healing biology of [@heal_scar_not_regen]; tension dependence of [@heal_tension]."

@D lim_flap_perfusion := "perfusion-limited flap size" :: real-limit [ok required]
  wall = "HARD WALL (vascular)"
  statement = "Flap dimensions are capped by the source pedicle's perfusion territory (angiosome + ~one choke-connected neighbor), not by surgical convenience. Beyond the vascular limit the distal flap undergoes ischemic necrosis."
  consequence = "Larger reconstruction/lift than the blood supply allows is not solvable by technique alone — it is a vascular-anatomy ceiling. Tension and patient vasoconstriction (smoking) lower the limit further."
  basis = "Angiosome map of [@vasc_angiosome] / perfusion physiology of [@vasc_flap_perfusion]; aggravated by [@lim_patient_factor]."

@D lim_fat_graft_take := "fat-graft retention ceiling" :: real-limit [ok required]
  wall = "SOFT WALL (biological/variable)"
  statement = "Autologous fat-graft survival is variable and incomplete: a fraction of injected adipocytes necrose and resorb because graft survival is diffusion-then-revascularization limited (parcels too large or poorly vascularized do not 'take'). Final retained volume is not deterministically predictable."
  consequence = "Volume restoration by lipofilling requires overcorrection and/or serial sessions; a single-pass 1:1 permanent volume is not a reliable claim. Improvable by atraumatic harvest + small-parcel placement (Coleman), but not eliminated."
  basis = "Diffusion/revascularization technique principle of [@proc_fat_grafting]."

@D lim_anesthetic_volume := "tumescent anesthetic & aspirate-volume safety thresholds" :: real-limit [ok required]
  wall = "HARD WALL (pharmacologic / physiologic safety)"
  statement = "Liposuction safety is bounded by a tumescent lidocaine maximum dose ceiling (the dilute tumescent technique safely permits higher mg/kg than plain infiltration, but a real upper bound exists — exceeding it risks lidocaine toxicity), plus total aspirate-volume limits above which fluid shifts, blood loss, and fat-/thromboembolism risk escalate. Large-volume cases require correspondingly higher monitoring/setting of care."
  consequence = "'Remove as much as the patient wants in one session' is not a safe claim — dose and volume are hard safety governors, not adjustable preferences. Exact mg/kg and volume thresholds are clinical parameters set by the operating surgeon/anesthetist, not asserted here."
  basis = "Tumescent technique safety frame of [@proc_liposuction] / [@x_klein_tumescent]."

@D lim_patient_factor := "patient-factor healing ceiling" :: real-limit [ok required]
  wall = "SOFT-TO-HARD WALL (host biology)"
  statement = "Host factors — active smoking, poorly controlled diabetes, vascular disease, immunosuppression/steroids, prior irradiation, malnutrition, advanced age — degrade perfusion and the proliferative healing response, raising flap necrosis, dehiscence, and infection risk. Smoking in particular is a consistently cited modifiable contraindication-grade risk for elective aesthetic flap surgery."
  consequence = "An identical operation does not yield an identical outcome across patients; technique cannot fully compensate for a degraded host wound bed. Optimization (cessation, glycemic control) is preoperative, not intraoperative."
  basis = "Host-factor mechanism of [@heal_patient_factors]; compounds [@lim_flap_perfusion]."

@D lim_complication_classes := "irreducible complication classes" :: real-limit [ok required]
  wall = "STRUCTURAL (non-zero baseline risk)"
  statement = "Every cosmetic operation carries a non-zero baseline rate of well-characterized complications: hematoma/seroma (incl. sight-threatening retrobulbar hematoma in blepharoplasty), surgical-site infection, skin/flap necrosis, capsular contracture (implants), nerve injury (motor/sensory; e.g. facial-nerve branches in rhytidectomy), unfavorable/hypertrophic scarring, and thrombo-/fat-embolism (esp. liposuction/fat grafting). Risk is mitigable but not zero-able."
  consequence = "No technique drives complication risk to zero; informed consent exists precisely because these classes are irreducible. Specific incidence rates are case-, patient-, and operator-dependent and are not asserted here."
  basis = "Foreign-body capsule of [@proc_implants]; nerve danger zones of [@proc_rhytidectomy]; embolism frame of [@proc_liposuction] / [@proc_fat_grafting]."

# ── §5 n=6 lattice stance (HONEST — no natural invariant) ─────────────

@F f_lattice_fit := "lattice-fit-on-cosmetic-surgery" :: governance [required deny:write]
  pattern = "Deriving surgical outcomes / success rates / revision rates / recovery times / satisfaction scores FROM the n=6 lattice (σ, τ, φ, J₂, sopfr, n=6 arithmetic)."
  why = "The pre-rewrite tape did exactly this (e.g. row_x_0 '대칭 정확도 99%' ← 1−1/σ²; row_exact_9 'EXACT 93%' ← (σ·φ/n·τ)·93). florea AGENTS.tape @F f_unsupported_efficacy + @D g_honesty_obligation_skincare forbid claiming a verb works because of n=6 without citing the underlying biology/clinical science."
  remedy = "Ground every claim in the real surgical/cell-biology literature via this tape's @X entries. The lattice is NOT a derivation tool for surgery."

@N n6_honest_stance := "cosmetic surgery has no natural n=6 invariant — observation, not derivation" :: note [required]
  text = "Stated plainly: aesthetic/cosmetic surgery exposes NO natural n=6 invariant. Outcomes, complication rates, flap perfusion limits, scar maturation times, and fat-graft retention are governed by vascular anatomy, wound-healing cell biology, anesthetic pharmacology, and host factors — none of which is lattice-constrained. Per LATTICE_POLICY g1/g2 (real-limits-first · lattice-is-tool) and florea AGENTS.tape, the n=6 lattice is DECLINED as a derivation tool here; it appears only as observation-not-derivation, if at all. This is the corrective for the audited pre-rewrite lattice-tautology violation (see COSMETIC-SURGERY.log.tape audit + supersede events)."

# ── §6 Verifiable predictions (real, falsifiable — NOT lattice) ───────

@D tp_1 := "TP-1 tension → scar width" :: prediction [ok]
  claim = "Higher closing/resting wound tension correlates with wider and more hypertrophic scars across body sites; low-tension layered closure along relaxed skin-tension lines yields finer scars."
  falsifier = "If a controlled study shows scar width/hypertrophy is independent of closing tension and orientation, [@heal_tension] / [@lim_scar_inevitable] is wrong."
  source = "[@x_mustoe_scar]"

@D tp_2 := "TP-2 flap necrosis follows the perfusion limit" :: prediction [ok]
  claim = "Flap distal necrosis rate rises sharply once flap dimensions exceed the source pedicle's angiosome-defined perfusion territory, and rises further with smoking-induced vasoconstriction."
  falsifier = "If flaps reliably survive well beyond their pedicle's perfusion territory irrespective of vascular anatomy, [@vasc_flap_perfusion] / [@lim_flap_perfusion] is wrong."
  source = "[@x_taylor_palmer_1987]"

@D tp_3 := "TP-3 fat-graft volume is sub-unity and variable" :: prediction [ok]
  claim = "Retained autologous fat-graft volume is consistently below the injected volume and varies between patients/sessions; atraumatic small-parcel placement improves but does not equalize retention to 1:1."
  falsifier = "If autologous fat grafting reproducibly retains the full injected volume in one pass across patients, [@lim_fat_graft_take] is wrong."
  source = "[@x_coleman_fat]"

# ── §7 Cross-links ────────────────────────────────────────────────────

@X x_florea_agents := "florea AGENTS.tape" :: governance [active]
  scope = "@D g_honesty_obligation_skincare + @F f_unsupported_efficacy + @D g_use_hexa_bio_cli (analytic verification shells out to hexa-bio)"

# ── §8 External citations (real, landmark literature) ─────────────────

@X x_taylor_palmer_1987 := "Taylor GI, Palmer JH 1987" :: literature [active]
  ref = "Taylor GI, Palmer JH. The vascular territories (angiosomes) of the body: experimental study and clinical applications. Br J Plast Surg 1987;40:113–141."

@X x_klein_tumescent := "Klein JA — tumescent technique" :: literature [active]
  ref = "Klein JA. The tumescent technique for liposuction surgery and anesthesia by local infiltration of dilute lidocaine. (Foundational tumescent-anesthesia liposuction technique / safety literature, Klein JA, late 1980s–1990s — J Dermatol Surg Oncol / Am J Cosmet Surg series.)"

@X x_coleman_fat := "Coleman SR — structural fat grafting" :: literature [active]
  ref = "Coleman SR. Structural fat grafting (the Coleman technique for atraumatic harvest, processing, and small-parcel reinjection of autologous fat). Aesthetic Surg J / Plast Reconstr Surg, Coleman SR, 1990s–2000s."

@X x_mitz_peyronie_smas := "Mitz V, Peyronie M 1976" :: literature [active]
  ref = "Mitz V, Peyronie M. The superficial musculo-aponeurotic system (SMAS) in the parotid and cheek area. Plast Reconstr Surg 1976;58:80–88. (Anatomic basis of SMAS-based rhytidectomy.)"

@X x_mustoe_scar := "Mustoe TA et al — scar management" :: literature [active]
  ref = "Mustoe TA et al. International clinical recommendations on scar management. Plast Reconstr Surg 2002;110:560–571. (Tension- and orientation-dependence of scar quality; hypertrophic/keloid management.)"

@X x_gurtner_review := "Gurtner GC et al 2008 — wound repair & regeneration" :: literature [active]
  ref = "Gurtner GC, Werner S, Barrandon Y, Longaker MT. Wound repair and regeneration. Nature 2008;453:314–321. (Adult scar-vs-regeneration biology; phases of healing; remodeling ceiling.)"

@X x_mathes_plastic_surgery := "Plastic Surgery (reference text)" :: literature [active]
  ref = "Standard plastic & reconstructive surgery reference texts (e.g. Mathes SJ ed., Plastic Surgery; Neligan PC ed., Plastic Surgery) — consolidated reference for blepharoplasty/implant technique, wound-healing phases, host-factor risk, and complication classes. Cited at text level; primary discovery refs are given separately above (no fabricated volume/page detail)."

@X x_gunter_dallas := "Rhinoplasty reference (Gunter / Dallas Rhinoplasty)" :: literature [active]
  ref = "Standard rhinoplasty reference literature (e.g. Gunter JP et al., Dallas Rhinoplasty) — soft-tissue-envelope and structural-support constraints, revision propensity. Cited at text level; named by primary author/era, no fabricated volume/page detail."
