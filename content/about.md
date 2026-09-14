---
title: About
description: Yanze Wang — Ph.D. candidate in Mathematics at UCAS, working on birational geometry.
---

This page is my professional face. The rest of me — essays on existence, modernity, and culture, written under the pen name **Hiraeth** — lives at [memex](https://memex.keinmal.top). The domain *keinmal.top* comes from the German proverb *einmal ist keinmal*, "what happens but once might as well not have happened" (Kundera, *The Unbearable Lightness of Being*, after Nietzsche's eternal recurrence): an attempt to take a single, unrepeatable life seriously.

I am a Ph.D. candidate at the Academy of Mathematics and Systems Science (AMSS), University of Chinese Academy of Sciences (UCAS), advised by Prof. Yifei Chen, expecting to graduate in June 2027. My research centers on the Sarkisov program for algebraically integrable foliations, together with related questions in the minimal model program.

Recently, I have been exploring **AI4Math**: human verification of AI-generated mathematical papers, building research harnesses (e.g. forking and extending [Rethlas](/project/rethlas)), and formalization in Lean 4. Beyond that, I am interested in AI infrastructure — LLM training and (mathematical) data annotation — including post-training tailored to mathematical research. Details of the small-scale projects I am currently reproducing can be found in the [Projects](#projects) section below.

A deliberate principle runs through all of this: AI is welcome where it augments my work — code, knowledge-gathering, drafting — but final judgment stays human. In mathematics, that means AI-generated results are only published after human verification; in my essays, writing is never delegated to AI.

I am open to research positions in both academia and industry. A short [resume](/resume.pdf) is available.

## Experience

### Education

- **Ph.D. in Mathematics** (in progress), AMSS, UCAS — 2024–2027 (expected). Research: birational geometry — Sarkisov program, algebraically integrable foliations. Advisor: Prof. Yifei Chen
- **M.S. in Mathematics**, AMSS, UCAS — 2020–2024. M.S. thesis: [_Sarkisov program for foliated pairs_](/paper/master). Advisor: Prof. Yifei Chen
- **B.S. in Mathematics**, Beihang University — 2016–2020. B.S. thesis: [_Moduli space of curves_](/paper/bachelor)

#### Teaching

- **Teaching Assistant**, Beihang University — undergraduate years: Linear Algebra, Algebraic Geometry

### Honors & Awards

- **MCM/ICM** — Meritorious Winner (twice)
- **Hua Luogeng Scholarship**, Beihang University (twice)
- **CAS** — Merit Student of the Chinese Academy of Sciences

## Skills

- **Mathematics**: birational geometry and the minimal model program — Sarkisov program, algebraically integrable foliations; moduli spaces
- **AI practice**: PyTorch / libtorch model-training mini-projects; agent-framework building
- **AI4Math**: human verification of AI-generated mathematical results; research harnesses; Lean 4 formalization
- **Engineering**: C, Rust, TUI application development (ratatui), Git; daily driver on Arch Linux with Neovim
- **Languages**: Chinese (native), English (professional working)

## Projects

### AI Practice

**Model training** (reproducing small-parameter training)

- [GPT teacher](https://github.com/hiraethecho/GPT_teacher-3.37M-cn) — a 3.37M-parameter Chinese GPT trained from scratch on CPU (incl. knowledge distillation)
- [tiny-reasoning-rl-lab](https://github.com/hiraethecho/tiny-reasoning-rl-lab) — a 41K-parameter reasoning-RL experiment (REINFORCE + KL, CPU)
- **Qwen3-0.6B math LoRA fine-tune** (toy-tune) — a toy fine-tune on a GSM8K subset, walking the data → train → track → artifact pipeline (Trackio)

**AI4Math**

- [toric-lean](https://github.com/hiraethecho/toric-lean) — reproducing the Lean 4 formalization of *Toric Varieties* (Cox–Little–Schenck)
- Learning and practicing workflows of agent architectures such as co-mathematician
- [Rethlas](/project/rethlas) — fork of a two-agent math-reasoning harness, adapted to my workflow
- Math formalization practice on the Lean 4 platform [prove2.me](https://prove2.me)
- [AiKit](/project/aikit) — agents / skills / plugins for coding agents (especially pi), used for math research and SDD programming

### Programming & Open Source

Beyond research and AI4Math, I am passionate about programming and exploring the Linux ecosystem: I maintain my own build of dwm (a dynamic tiling window manager on X11) and several other [suckless](/project/suckless) components, wrote a Hugo theme powering two of my sites, and developed a number of command-line and TUI tools with AI assistance (vibe coding).

- [suckless](/project/suckless) — personal fork of dwm / dwmblocks and other desktop components (C), patched by hand, no AI assistance
- [Calman](/project/calman) — terminal task & event manager (CLI, Rust): JSONL/ICS storage, CalDAV-compatible, sync delegated to radicale / vdirsyncer / rclone
- [Markerss](/project/markerss) — TUI RSS reader (Rust, ratatui): Markdown export, URL bookmarks
- [Lichtung](/project/lichtung) — Hugo theme (Go templates / SCSS) powering two personal sites
- [mumble](/project/mumble) — message board (JavaScript, Cloudflare Worker); standalone or embedded pages
- [cutui](/project/cutui) — simple TUI video editor (Rust)

## Papers & Talks

### Publications

- **Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures** — Yifei Chen, Jihao Liu, Yanze Wang. [_International Mathematics Research Notices_, 2026(6): rnag045](/paper/sp4afs).
- **Flop between algebraically integrable foliations on potentially KLT varieties** — Yifei Chen, Jihao Liu, Yanze Wang. [_International Journal of Mathematics_, 36(11): 2550035](/paper/flop-ai-foliation).
- **A Note on the Sarkisov Program** — Yifei Chen, Yanze Wang. [_Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov_, LMS Lecture Note Series, pp. 231–263, Cambridge University Press](/paper/note-sarkisov).

### Preprints

_All AI-generated, human-verified._

- **A klt generalized pair with infinitely generated canonical ring** — Jihao Liu, Yanze Wang. arXiv:2608.03258. [Details](/paper/klt-canonical-ring)
- **Twelve common flex lines in a general pencil of cubics** — Jihao Liu, Yanze Wang. arXiv:2607.26396. [Details](/paper/flex-lines)
- **A counterexample to the odd-dimensional rank bound for abelian p-group actions** — Jihao Liu, Yanze Wang. arXiv:2607.04891. [Details](/paper/rank-bound)

### Talks

- **2026** — Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations*, Xi'an Jiaotong-Liverpool University

The complete list is on the [Papers](/paper/) page.

## Writing

On [memex](https://memex.keinmal.top) I write about existence, philosophy, modernity, literature, and the culture industry — book and film criticism, introspection, and the occasional poem. My essays are written by hand: no AI generation or polishing, as a matter of protecting language and therefore thought (I do happily use AI for knowledge-gathering). Some pieces are also published on a Chinese WeChat public account.

## Links

- **Email**: wangyanze@amss.ac.cn — feel free to reach out about research or collaboration
- **GitHub**: [hiraethecho](https://github.com/hiraethecho) — code and open-source work
- **ORCID**: [0009-0003-3661-1890](https://orcid.org/0009-0003-3661-1890) — publication record
- **Notes**: [docs.keinmal.top](https://docs.keinmal.top) — technical documentation and notes
- **MEMEX**: [memex.keinmal.top](https://memex.keinmal.top) — essays on existence, modernity, and culture