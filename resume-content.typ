// =============================================================
// resume-content.typ — content (both languages) for the 1-page
// resume PDFs. Format/layout lives in format-lib.typ.
// =============================================================
#import "format-lib.typ": *

// pick by language
#let zh(lang, cn, en) = if lang == "zh" { cn } else { en }

#let T(lang) = (
  // ---- header ----
  name: zh(lang, "王延泽", "Yanze Wang"),
  primary: zh(lang, [
    数学博士生（双有理几何方向）\
    预计 2027 年 6 月毕业\
    中国科学院数学与系统科学研究院（中国科学院大学）
  ], [
    Ph.D. Candidate in Mathematics (Birational Geometry)\
    Expected Graduation: June 2027\
    AMSS, University of Chinese Academy of Sciences
  ]),
  secondary: zh(lang, [
    #link("mailto:wangyanze@amss.ac.cn")[wangyanze\@amss.ac.cn]\
    155 3825 5707\
    #link("https://keinmal.top")[keinmal.top]\
    #github-icon() #link("https://github.com/hiraethecho")[github.com/hiraethecho]\
    #orcid-icon() #link("https://orcid.org/0009-0003-3661-1890")[ORCID: 0009-0003-3661-1890]
  ], [
    #link("mailto:wangyanze@amss.ac.cn")[wangyanze\@amss.ac.cn]\
    +86 155 3825 5707\
    #link("https://keinmal.top")[keinmal.top]\
    #github-icon() #link("https://github.com/hiraethecho")[github.com/hiraethecho]\
    #orcid-icon() #link("https://orcid.org/0009-0003-3661-1890")[ORCID: 0009-0003-3661-1890]
  ]),

  // ---- section headings ----
  h-interests: zh(lang, "研究方向", "Research Interests"),
  h-experience: zh(lang, "经历", "Experience"),
  h-math: zh(lang, "数学", "Mathematics"),
  h-projects: zh(lang, "项目", "Projects"),
  h-skills: zh(lang, "技能", "Skills"),
  // sub-headings
  h-edu: zh(lang, "教育", "Education"),
  h-honors: zh(lang, "荣誉", "Honors"),
  h-talks: zh(lang, "报告", "Talks"),
  h-pubs-sub: zh(lang, "发表论文", "Publications"),
  h-ai4math: zh(lang, "AI4Math 实践", "AI4Math Practice"),

  // ---- interests ----
  interests: zh(lang, [
    双有理几何（极小模型纲领、Sarkisov 纲领、叶层化）；AI4Math：AI 生成数学结果的人工验证、Lean 4 形式化、数学专用模型训练思路与研究 harness 搭建。
  ], [
    Birational geometry — minimal model program, Sarkisov program, foliations.
    AI4Math: human verification of AI-generated results, Lean 4 formalization,
    training approaches for math-specialized models, research-harness building.
  ]),

  // ---- education ----
  edu: zh(lang, (
    (
      at: [2024 – 至今],
      body: [*数学博士（在读）*，中国科学院数学与系统科学研究院（中国科学院大学），预计 2027 年 6 月毕业],
    ),
    (
      at: [2022 – 2024],
      body: [*理学硕士*，中国科学院数学与系统科学研究院（中国科学院大学）],
    ),
    (
      at: [2016 – 2020],
      body: [*理学学士*，北京航空航天大学],
    ),
  ), (
    (
      at: [2024 – now],
      body: [*Ph.D. in Mathematics*, AMSS–UCAS (in progress; expected June 2027)],
    ),
    (
      at: [2022 – 2024],
      body: [*M.S. in Mathematics*, AMSS–UCAS],
    ),
    (
      at: [2016 – 2020],
      body: [*B.S. in Mathematics*, Beihang University],
    ),
  )),

  // ---- honors + talks ----
  honors: zh(lang, [
    美国大学生建模竞赛 M等奖（两次）；华罗庚奖学金，北航（两次）；中国科学院三好学生。
  ], [
    MCM/ICM Meritorious Winner (twice); Hua Luogeng Scholarship, Beihang (twice); CAS Merit Student.
  ]),
  talk: zh(lang, [
    报告人，《代数可积与三维叶状结构的 Sarkisov 纲领》，西交利物浦大学，2026。
  ], [
    Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations*, Xi'an Jiaotong-Liverpool University, 2026.
  ]),

  // ---- publications (title on the numbered line; authors + journal below) ----
  pubs: (
    [*Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
      Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._ 2026],
    [*Flop between algebraically integrable foliations on potentially KLT varieties*. \
      Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._ 2025],
    [*A Note on the Sarkisov Program*. \
      Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, LMS Lecture Note Series, pp. 231–263, Cambridge University Press._ 2025],
  ),

  // ---- AI4Math practice ----
  math-sw: zh(lang, (
    [*Rethlas*（#link("https://github.com/hiraethecho/Rethlas")[github.com/hiraethecho/Rethlas]）：fork 并改进了基于两个 Codex 智能体的自然语言数学推理系统（生成 + 验证）。],
  ), (
    [*Rethlas* (#link("https://github.com/hiraethecho/Rethlas")[github.com/hiraethecho/Rethlas]): forked & extended a two-agent natural-language math-reasoning harness (generation + verification).],
  )),

  // ---- projects ----
  projects: zh(lang, (
    (
      at: [#link("https://github.com/hiraethecho/suckless")[suckless]],
      body: [X11 桌面组件（dwm/dwmblocks）fork，通过 C 语言补丁增强（未经 AI）。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/lichtung")[lichtung]],
      body: [Hugo 主题（对话式 AI 开发），支撑两个个人站点。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/calman")[calman]],
      body: [基于 iCalendar 的 CLI 任务与事件管理器（vibe coding，Rust）。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/markerss")[markerss]],
      body: [TUI RSS 阅读器（vibe coding，Rust/ratatui）。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/AiKit")[AiKit]],
      body: [面向编码智能体（尤其 pi）的工具集合（skills/插件）与快速部署脚本。],
    ),
  ), (
    (
      at: [#link("https://github.com/hiraethecho/suckless")[suckless]],
      body: [X11 desktop components (dwm/dwmblocks) fork — enhanced by C patches, no AI.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/lichtung")[lichtung]],
      body: [Hugo theme (built via AI chat), powers two personal sites.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/calman")[calman]],
      body: [CLI task & event manager on iCalendar (vibe-coded, Rust).],
    ),
    (
      at: [#link("https://github.com/hiraethecho/markerss")[markerss]],
      body: [TUI RSS reader (vibe-coded, Rust/ratatui).],
    ),
    (
      at: [#link("https://github.com/hiraethecho/AiKit")[AiKit]],
      body: [tools/skills/plugins for coding agents (esp. pi) + quick-deploy scripts.],
    ),
  )),

  // ---- skills ----
  skills: zh(lang, (
    [*数学：* 双有理几何——极小模型纲领、Sarkisov 纲领、叶层化。],
    [*工程：* Arch Linux（Niri/dwm）+ Neovim、Git、C、LaTeX。],
    [*语言：* 中文（母语）、英语（专业工作水平）。],
  ), (
    [*Mathematics:* birational geometry — MMP, Sarkisov program, foliations.],
    [*Engineering:* Arch Linux (Niri/dwm) + Neovim, Git, C, LaTeX.],
    [*Languages:* Chinese (native), English (professional).],
  )),
)

// ---- render all resume sections for a language ----
#let resume(lang) = {
  let t = T(lang)
  [
= #t.h-interests

#t.interests

#section-divider(compact: true)

= #t.h-experience

== #t.h-edu

#entry-list(t.edu, compact: true)

== #t.h-honors

#t.honors

== #t.h-talks

#t.talk

#section-divider(compact: true)

= #t.h-math

== #t.h-pubs-sub

#pubs(t.pubs, compact: true)

== #t.h-ai4math

#tight-list(t.math-sw, compact: true)

#section-divider(compact: true)

= #t.h-projects

#entry-list(t.projects, compact: true)

#section-divider(compact: true)

= #t.h-skills

#tight-list(t.skills, compact: true)
  ]
}
