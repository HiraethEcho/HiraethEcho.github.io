// Yanze Wang — Resume (English port of resume-zh.typ, minimalistic-latex-cv template)
#import "@preview/minimalistic-latex-cv:0.1.1": cv, entry

#show: cv.with(
  name: "Yanze Wang",
  metadata: (
    email: "wyz2016zxc@outlook.com",
    telephone: "+86 155 3825 5707",
    homepage: "https://keinmal.top",
    github: "GitHub: hiraethecho",
    orcid: "ORCID: 0009-0003-3661-1890",
  ),
  lang: "en",
)

// Keep the same Latin typeface as the Chinese resume for a consistent look.
#set text(size: 13pt)

= Experience
== Education

#entry(
  title: "Ph.D. in Pure Mathematics (in progress)",
  name: "Academy of Mathematics and Systems Science (AMSS), Chinese Academy of Sciences",
  date: "Expected June 2027",
)
 *Research interests:* birational geometry — Sarkisov program, algebraically integrable foliations

#entry(
  title: "M.S. in Mathematics",
  name: "Academy of Mathematics and Systems Science (AMSS), Chinese Academy of Sciences",
)

#entry(
  title: "B.S. in Mathematics",
  name: "Beihang University",
)
Teaching assistant for Linear Algebra and Algebraic Geometry during undergraduate studies.

== Honors & Awards

- MCM/ICM (Mathematical Contest in Modeling) — Meritorious Winner (twice)
- Hua Luogeng Scholarship, Beihang University (twice)

= Skills

- *Mathematics:* birational geometry and the minimal model program: Sarkisov program, algebraically integrable foliations; moduli spaces.
- *AI Practice:* local PyTorch / libtorch model-training mini-projects; agent-framework building.
- *AI4Math:* human verification of AI-generated mathematical results; research harnesses and Lean 4 formalization.
- *Engineering:* torch (Python & C++); Rust, C, LaTeX; Linux and Git; vibe-coding personal CLI / TUI programs (Rust).

= Projects

== AI Practice

- *Model training:* learned from llm-from-scratch and other tutorials — Transformer internals and training loops; reproducing small-parameter training: #link("https://github.com/hiraethecho/GPT_teacher-3.37M-cn")[*Chinese GPT*], #link("https://github.com/hiraethecho/tiny-reasoning-rl-lab")[*RL*], and LoRA fine-tuning.
- *AI4Math:* learning and practicing workflows of agent architectures such as co-mathematician; adapting #link("https://github.com/hiraethecho/Rethlas")[Rethlas] to my own workflow. Formalization practice — reproducing #link("https://github.com/hiraethecho/toric-lean")[*toric-lean*] and others; contributing to the Lean 4 platform prove2.me.
- #link("https://github.com/hiraethecho/AiKit")[*AiKit*] — agent toolkit for coding agents (pi, opencode, codex, claude code, etc.): skills / plugins, used for math research and SDD programming.

== Programming

- #link("https://github.com/hiraethecho/suckless")[*suckless*] — personal fork of dwm / dwmblocks (C), patched and maintained by hand, no AI assistance.
- #link("https://github.com/hiraethecho/calman")[*Calman*] — terminal task & event manager (CLI, Rust). CalDAV-compatible; sync delegated to radicale / vdirsyncer / rclone.
- #link("https://github.com/hiraethecho/markerss")[*Markerss*] — TUI RSS reader (Rust, ratatui): Markdown export, URL bookmarks.
- #link("https://github.com/hiraethecho/lichtung")[*Lichtung*] — Hugo theme (Go templates / SCSS) powering two personal sites.
- #link("https://github.com/hiraethecho/mumble")[*mumble*] — message board (JavaScript, Cloudflare Worker); standalone or embedded pages.

= Papers & Talks

== Published

#entry(
  title: "Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures",
  name: "Yifei Chen, Jihao Liu, and Yanze Wang",
  date: "2026",
)
- *Journal:* _International Mathematics Research Notices_, 2026(6): rnag045.

#entry(
  title: "Flop between algebraically integrable foliations on potentially KLT varieties",
  name: "Yifei Chen, Jihao Liu, and Yanze Wang",
  date: "2025",
)
- *Journal:* _International Journal of Mathematics_, 36(11): 2550035.

#entry(
  title: "A Note on the Sarkisov Program",
  name: "Yifei Chen and Yanze Wang",
  date: "2025",
)
- *In:* _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov_, LMS Lecture Note Series, pp. 231–263, Cambridge University Press.

== Preprints

_All AI-generated, human-verified._

#entry(
  title: "A klt generalized pair with infinitely generated canonical ring",
  name: "Jihao Liu and Yanze Wang",
  date: "2026",
)
- arXiv:2608.03258.

#entry(
  title: "Twelve common flex lines in a general pencil of cubics",
  name: "Jihao Liu and Yanze Wang",
  date: "2026",
)
- arXiv:2607.26396.

== Talks

#entry(
  title: "Sarkisov Program for Algebraically Integrable and Threefold Foliations",
  name: "Speaker",
  date: "2026",
  location: "Xi'an Jiaotong-Liverpool University",
)