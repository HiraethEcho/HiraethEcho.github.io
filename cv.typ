// EN detailed CV — cv-soft-and-hard template.
// Content inline; content.typ is the plain reference source.
#import "@preview/cv-soft-and-hard:0.1.0": entry, section, styling, subsection

#set document(author: "Yanze Wang", title: "Yanze Wang - Curriculum Vitae")
#show: styling
// #show heading: set text(size: 15pt)   // 连同 section 标题一起改
// 或按层级
#show heading.where(level: 2): set text(size: 15pt)
#show heading.where(level: 3): set text(size: 12pt)

= Yanze Wang - Curriculum Vitae
  Academy of Mathematics and Systems Science, University of Chinese Academy of Sciences
  Ph.D. Candidate in Pure Mathematics — expected June 2027\
  #link("mailto:wangyanze@amss.ac.cn")[wangyanze\@amss.ac.cn] | +86 155 3825 5707 |
  #link("https://orcid.org/0009-0003-3661-1890")[ORCID: 0009-0003-3661-1890] \
  #link("https://keinmal.top")[keinmal.top] |
  #link("https://github.com/hiraethecho")[github.com/hiraethecho]

#section("Research & Practice")
#entry(
  [
    - *Mathematics:* birational geometry and the minimal model program — Sarkisov program, algebraically integrable foliations, moduli spaces.
    - *AI practice:* local small projects with PyTorch / libtorch; agent-framework building.
    - *AI4Math:* human verification of AI-generated mathematical results; research harnesses and Lean 4 formalization.
    - *Engineering:* torch (Python & C++); Rust, C, LaTeX; familiar with Linux and Git; personal CLI / TUI programs developed with vibe coding (Rust).
  ],
  [],
)

#section("Publications")
#entry(
  [
    *Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._
  ],
  [_2026_],
  description: [
    By applying the theory of the minimal model program for adjoint foliated structures, we establish the Sarkisov program for algebraically integrable foliations on klt varieties: any two Mori fiber spaces of such a structure are connected by a sequence of Sarkisov links. Combining with a result of R. Mascharak, we establish the Sarkisov program for foliations in dimension at most 3 with mild singularities. Log and adjoint-foliated versions of the aforementioned Sarkisov programs are also established.
  ],
)
#entry(
  [
    *Flop between algebraically integrable foliations on potentially KLT varieties*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._
  ],
  [_2025_],
  description: [
    We prove that for any two minimal models of an lc algebraically integrable foliated triple on potentially klt varieties, there exist small birational models that are connected by a sequence of flops. In particular, any two minimal models of lc algebraically integrable foliated triples on ℚ-factorial klt varieties are connected by a sequence of flops. We also discuss the connection between minimal models for possibly non-algebraically integrable foliations on threefolds, assuming the minimal model program for generalized foliated quadruples.
  ],
)
#entry(
  [
    *A Note on the Sarkisov Program*. \
    Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, LMS Lecture Note Series, pp. 231–263, Cambridge University Press._
  ],
  [_2025_],
  description: [
    This note introduces three methods of the Sarkisov program, which factorizes birational maps of log Mori fibre spaces into elementary Sarkisov links.
  ],
)

#section("Preprints")
#entry(
  [
    *A klt generalized pair with infinitely generated canonical ring* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2608.03258._
  ],
  [_2026_],
  description: [
    We construct a projective klt generalized pair (X, B, M) with infinitely generated generalized log canonical ring R(X, K_X+B+M). This gives the first example of a klt variety X with −K_X nef whose anticanonical ring R(X, −K_X) is not finitely generated.
  ],
)
#entry(
  [
    *Twelve common flex lines in a general pencil of cubics* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.26396._
  ],
  [_2026_],
  description: [
    We prove that a general pencil of plane cubics over ℂ has exactly 12 common flex lines. This answers a question of Ciliberto, Miranda, and Roe.
  ],
)
#entry(
  [
    *A counterexample to the odd-dimensional rank bound for abelian p-group actions* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.04891._
  ],
  [_2026_],
  description: [
    We give a counterexample to the odd-dimensional extension of the rank bound for faithful abelian p-group actions on smooth Calabi-Yau varieties, conjectured by Moraga.
  ],
)

#section("Theses")
#entry(
  [
    *M.S.:* "Sarkisov program for foliated pairs"
  ],
  [],
  description: [
    The minimal model program seeks a good representative in each birational equivalence class; these representatives split into minimal models and Mori fiber spaces. The thesis introduces the three methods of the Sarkisov program and establishes it for foliated pairs — by reducing F-dlt foliated pairs to klt pairs, one obtains a weak decomposition of birational maps between foliated Mori fiber spaces.
  ],
)
#entry(
  [
    *B.S.:* "Moduli space of curves"
  ],
  [],
  description: [
    This report constructs moduli spaces of curves and their compactifications via geometric invariant theory (GIT) and stack theory — introducing smooth and DM stable curves, developing the necessary tools (category theory, stack theory, Hilbert scheme, GIT), constructing two kinds of curve moduli spaces, and closing with further questions.
  ],
)

#section("Invited Talks")
#entry(
  [
    Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations*, Xi'an Jiaotong-Liverpool University.
  ],
  [_2026_],
)

#section("Projects")
#subsection("Programming")
#entry(
  [#link("https://github.com/hiraethecho/suckless")[*suckless*] — personal fork of dwm / dwmblocks (X11 dynamic tiling window manager, C), patched and maintained by hand, no AI assistance.],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/calman")[*Calman*] — terminal task & event manager (CLI + TUI, Rust). JSONL/ICS storage, CalDAV-compatible; syncs across devices via a self-hosted Radicale server, delegating to git / vdirsyncer / rclone.],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/markerss")[*Markerss*] — TUI RSS reader (Rust, ratatui + feed-rs): Markdown export, URL-only bookmarks.],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/lichtung")[*Lichtung*] — Hugo theme (Go templates / SCSS) built with conversational AI-assisted development; powers two personal sites (docs & blog).],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/mumble")[*mumble*] — message board (JavaScript, Cloudflare Worker): deploy standalone or embed.],
  [],
)

#subsection("AI Practice")
#entry(
  [*Model training:* local practice — pytorch-cpp, llm-from-scratch, build-llm-from-zero, tiny-reasoning-rl-lab, etc.],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/AiKit")[*AiKit*] — agent framework: agents / skills / plugins for coding agents (pi, opencode, codex, claude code, …), including pi extensions (rtk, cave, toon, doc, role) and quick-deploy scripts.],
  [],
)
#entry(
  [*Open-source:* forks, improvements & usage — #link("https://github.com/hiraethecho/Rethlas")[Rethlas] (natural-language math reasoning), co-mathematician, etc.; contribution to the Lean 4 platform prove2.me.],
  [],
)
#entry(
  [*Closed beta:* agentero, math research workstation & paper reader (temporarily closed-source).],
  [],
)

#section("Education")
#entry(
  [
    *Ph.D.*\
    Mathematics PhD (in progress), AMSS, University of Chinese Academy of Sciences — expected June 2027.\
    _Advisor:_ Prof. Yifei Chen.\
    _Research:_ birational geometry — Sarkisov program, algebraically integrable foliations.
  ],
  [],
)
#entry(
  [
    *M.S.*\
    Mathematics M.S., AMSS, University of Chinese Academy of Sciences.\
    _Advisor:_ Prof. Yifei Chen.\
    _Thesis:_ "Sarkisov program for foliated pairs".
  ],
  [],
)
#entry(
  [
    *B.S.*\
    Mathematics B.S., Beihang University.\
    _Thesis:_ "Moduli space of curves".\
    Undergraduate teaching assistant: Linear Algebra, Algebraic Geometry.
  ],
  [],
)

- MCM/ICM — Meritorious Winner (twice)
- Hua Luogeng Scholarship, Beihang University (twice)
