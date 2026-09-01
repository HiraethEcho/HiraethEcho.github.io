#import "@preview/acadennial-cv:0.1.0": *

// ============================================
// Default function configurations
// ============================================

#let col-cfg = (
  c1-len: 15%,
  c2-len: 1fr,
  c3-len: auto,
  col-gutter: 1em,
)

#let employment-head = employment-head.with(..col-cfg)
#let employment-head-item = employment-head-item.with(..col-cfg)
#let employment-head-item-list = employment-head-item-list.with(..col-cfg)
#let meta-entry = meta-entry.with(..col-cfg)
#let meta-entry-item = meta-entry-item.with(..col-cfg)
#let meta-entry-item-list = meta-entry-item-list.with(..col-cfg)
#let pub-item = pub-item.with(..col-cfg)
#let pub-item-list = pub-item-list.with(..col-cfg)

// ============================================
// Initialize resume settings
// ============================================
#show: resume.with(
  col-args: (
    c1-len: col-cfg.c1-len,
    c2-len: col-cfg.c2-len,
    col-gutter: col-cfg.col-gutter,
  ),
  author-info: (
    name: "Wang Yanze",
    primary-info: [
      Ph.D Candidate in Mathematics \
      Expected Graduation: June 2027 \
      No. 55 Zhongguancun East Road,\
      Beijing 100190, China
    ],
    secondary-info: [
      #link("mailto:wangyanze@amss.ac.cn")[wangyanze\@amss.ac.cn] \
      // #link("https://www.debugson.dev")[https://www.debugson.dev] \
      #link("https://github.com/hiraethecho")[#github-icon()]
      #link("https://orcid.org/0009-0003-3661-1890")[#orcid-icon()]
    ],
  ),
)

== Research Interests

Birational Geometry, Minimal Model Program; Moduli Spaces, Mori Dream Spaces

== Education
#employment-head-item-list(
  (
    c2: "Academy of Mathematics and Systems Science, Chinese Academy of Sciences",
    c3: "Beijing, China",
    body: [
      _Advisor:_ Prof. Yifei Chen
    ],
  ),
  (
    c2: "Academy of Mathematics and Systems Science, Chinese Academy of Sciences",
    c3: "Beijing, China",
    body: [
      M.S. in Mathematics, May 2024 \
      _Thesis:_ Sarkisov program for foliated pairs \
      _Advisor:_ Prof. Yifei Chen
    ],
  ),
  (
    c2: "Beihang University",
    c3: "Beijing, China",
    body: [
      B.S. in Mathematics, June 2020 \
      _Thesis:_ Moduli space of Curves \
    ],
  ),
)


== Awards and Honors

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  item-spacing: 0.8em,
  (
    c1: "MCM/ICM",
    c2: "Meritorious Winner (twice)",
  ),
  (
    c1: "CAS",
    c2: "Merit Student of the Chinese Academy of Sciences",
  ),
)


== Publications

#pubs-reset()

#pub-item-list(
  [ Yifei Chen and Yanze Wang. \
    *A Note on the Sarkisov Program*. \
    _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, London Mathematical Society Lecture Note Series, pages 231–263. Cambridge University Press._ 2025 ],
  [ Yifei Chen, Jihao Liu, and Yanze Wang. \
    *Flop between algebraically integrable foliations on potentially KLT varieties*. \
    _International Journal of Mathematics, 36(11):2550035._ 2025 ],
  [
    Yifei Chen, Jihao Liu, and Yanze Wang. \
    *Sarkisov Program for Algebraically Integrable and Three-fold Foliations*. \
    _International Mathematics Research Notices, 2026(6):rnag045. _
  ],
)

== Preprints

#pubs-reset()

#pub-item-list(
  [ Jihao Liu and Yanze Wang. \
    *A klt generalized pair with finitely generated canonical ring*. \
    _arxiv:2608.02358. 2026_
  ],
  [ Jihao Liu, and Yanze Wang. \
    *Twelve common flex lines in a general pencil of cubics*. \
    _arxiv:2607.26396. 2026_
  ],
  [
    Jihao Liu and Yanze Wang. \
    *A counterexample to the odd-dimensional rank bound for abelian p-group actions*. \
    _arxiv:2607.048901. 2026_
  ],
)

== Invited Talks

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  (
    c1: "2026",
    c2: [Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations* \
      \@_Xi’an Jiaotong-Liverpool University_],
  ),
)
