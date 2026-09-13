// EN resume — cv-soft-and-hard template.
// Content written inline; content.typ is the reference source of truth.
#import "@preview/cv-soft-and-hard:0.1.0": styling, section, subsection, entry

#set document(author: "Yanze Wang", title: "Yanze Wang - Resume")
#show: styling
#set text(font: ("Liberation Serif", "LXGW WenKai Mono"), size: 11pt)
#set page(margin: (left: 2cm, right: 2cm, top: 2cm, bottom: 2cm))
#set par(leading: 1em)       // 行距（默认约 1.2）
#show heading.where(level: 1): set text(size: 15pt)
#show heading.where(level: 2): set text(size: 14pt)
#show heading.where(level: 3): set text(size: 13pt)

= Yanze Wang
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

#section("Papers & Talks")
#subsection("Publications")
#entry(
  [
    *Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._ 2026
  ],
  [],
)
#entry(
  [
    *Flop between algebraically integrable foliations on potentially KLT varieties*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._ 2025
  ],
  [],
)
#entry(
  [
    *A Note on the Sarkisov Program*. \
    Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, LMS Lecture Note Series, pp. 231–263, Cambridge University Press._ 2025
  ],
  [],
)

#subsection("Preprints")
#entry(
  [
    *A klt generalized pair with infinitely generated canonical ring* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2608.03258._ 2026
  ],
  [],
)
#entry(
  [
    *Twelve common flex lines in a general pencil of cubics* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.26396._ 2026
  ],
  [],
)
#entry(
  [
    *A counterexample to the odd-dimensional rank bound for abelian p-group actions* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.04891._ 2026
  ],
  [],
)

#subsection("Invited Talks")
#entry(
  [
    Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations*, Xi'an Jiaotong-Liverpool University.
  ],
  [_2026_],
)

#section("Projects")
#subsection("Programming")
#entry([#link("https://github.com/hiraethecho/suckless")[*suckless*] — personal fork of dwm / dwmblocks (C), patched and maintained by hand, no AI assistance.], [])
#entry([#link("https://github.com/hiraethecho/calman")[*Calman*] — terminal task & event manager (CLI + TUI, Rust). CalDAV-compatible; sync delegated to git / vdirsyncer / rclone.], [])
#entry([#link("https://github.com/hiraethecho/markerss")[*Markerss*] — TUI RSS reader (Rust, ratatui): Markdown export, URL-only bookmarks.], [])
#entry([#link("https://github.com/hiraethecho/lichtung")[*Lichtung*] — Hugo theme (Go templates / SCSS), powers two personal sites.], [])
#entry([#link("https://github.com/hiraethecho/mumble")[*mumble*] — message board (JavaScript, Cloudflare Worker), embeddable.], [])

#subsection("AI Practice")
#entry([*Model training:* local practice — pytorch-cpp, llm-from-scratch, build-llm-from-zero, tiny-reasoning-rl-lab, etc.], [])
#entry([#link("https://github.com/hiraethecho/AiKit")[*AiKit*] — agent framework: agents / skills / plugins for coding agents (pi, opencode, codex, claude code, …).], [])
#entry([*Open-source:* forks, improvements & usage — #link("https://github.com/hiraethecho/Rethlas")[Rethlas] (natural-language math reasoning), co-mathematician, etc.; contribution to the Lean 4 platform prove2.me.], [])
#entry([*Closed beta:* agentero, math research workstation & paper reader (temporarily closed-source).], [])

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
