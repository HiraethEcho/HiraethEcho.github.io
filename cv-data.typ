// =============================================================
// CV shared content layer — single source for 4 PDFs
//   (lang: en|zh) × (variant: academic|industry)
// =============================================================
#import "@preview/acadennial-cv:0.1.0": *

#let col-cfg = (
  c1-len: 15%,
  c2-len: 1fr,
  c3-len: auto,
  col-gutter: 1em,
)

#let employment-head-item = employment-head-item.with(..col-cfg)
#let employment-head-item-list = employment-head-item-list.with(..col-cfg)
#let meta-entry-item = meta-entry-item.with(..col-cfg)
#let meta-entry-item-list = meta-entry-item-list.with(..col-cfg)
#let pub-item = pub-item.with(..col-cfg)
#let pub-item-list = pub-item-list.with(..col-cfg)

// pick by language
#let zh(lang, cn, en) = if lang == "zh" { cn } else { en }

// -------------------------------------------------------------
// strings
// -------------------------------------------------------------
#let T(lang) = ({
  (
    name: zh(lang, "王延泽", "Wang Yanze"),
    primary: zh(lang, [
      数学博士生（双有理几何方向）\
      预计 2027 年 6 月毕业\
      北京市海淀区中关村东路 55 号，100190
    ], [
      Ph.D. Candidate in Mathematics\
      Expected Graduation: June 2027\
      No. 55 Zhongguancun East Road,\
      Beijing 100190, China
    ]),
    secondary-email: link("mailto:wangyanze@amss.ac.cn")[wangyanze\@amss.ac.cn],
    secondary-site: link("https://keinmal.top")[keinmal.top],
    secondary-github: link("https://github.com/hiraethecho")[github.com/hiraethecho],
    secondary-icons: [
      #link("https://github.com/hiraethecho")[#github-icon()]
      #link("https://orcid.org/0009-0003-3661-1890")[#orcid-icon()]
    ],
    phone: "155 3825 5707",

    // ---- section headings ----
    h_interests: zh(lang, "研究方向", "Research Interests"),
    h_edu: zh(lang, "教育背景", "Education"),
    h_awards: zh(lang, "荣誉奖励", "Awards and Honors"),
    h_pubs: zh(lang, "发表论文", "Publications"),
    h_pre: zh(lang, "预印本", "Preprints"),
    h_sel_pubs: zh(lang, "代表论文", "Selected Publications"),
    h_talks: zh(lang, "学术报告", "Invited Talks"),
    h_sw: zh(lang, "软件与开源", "Software and Open Source"),
    h_summary: zh(lang, "个人总结", "Summary"),
    h_skills: zh(lang, "技术能力", "Technical Skills"),
    h_projects: zh(lang, "项目经历", "Projects"),
    h_exp: zh(lang, "研究经历", "Research Experience"),

    // ---- content ----
    interests: zh(lang,
      [双有理几何、极小模型纲领；模空间。近期关注 AI 辅助数学（AI4Math）：AI 生成数学结果的人工验证，及 Lean 4 形式化。],
      [Birational Geometry, Minimal Model Program; Moduli Spaces. Currently also working on AI-assisted mathematics (AI4Math): human verification of AI-generated results, and formalization in Lean 4.]),

    amss: zh(lang, "中国科学院数学与系统科学研究院（中国科学院大学）",
             "Academy of Mathematics and Systems Science, Chinese Academy of Sciences"),
    buaa: zh(lang, "北京航空航天大学", "Beihang University"),
    beijing: zh(lang, "北京", "Beijing, China"),
    phd_title: zh(lang, [数学博士（2024 – 至今）], [Ph.D. in Mathematics (2024 – present)]),
    ms_title: zh(lang, "硕士，2024 年 5 月", "M.S. in Mathematics, May 2024"),
    bs_title: zh(lang, "学士，2020 年 6 月", "B.S. in Mathematics, June 2020"),
    advisor: zh(lang, [_指导教师：_ 陈亦飞 教授], [_Advisor:_ Prof. Yifei Chen]),
    ms_thesis: zh(lang, [_学位论文：_《叶层化对的 Sarkisov 纲领》], [_Thesis:_ Sarkisov program for foliated pairs]),
    bs_thesis: zh(lang, [_学位论文：_《曲线模空间》], [_Thesis:_ Moduli space of Curves]),

    award1: zh(lang, [美国大学生数学建模竞赛（MCM/ICM）— 一等奖（Meritorious Winner，两次）],
                [MCM/ICM — Meritorious Winner (twice)]),
    award2: zh(lang, [北京航空航天大学华罗庚奖学金（两次）],
                [Hua Luogeng Scholarship, Beihang University (twice)]),
    award3: zh(lang, [中国科学院三好学生],
                [CAS — Merit Student of the Chinese Academy of Sciences]),

    talk1: zh(lang, [报告人，《代数可积与三维叶层化的 Sarkisov 纲领》\@西交利物浦大学],
              [Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations* \@_Xi'an Jiaotong-Liverpool University_]),

    // publications: canonical English citations in both languages
    pub1: [Yifei Chen, Jihao Liu, and Yanze Wang. \
      *Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
      _International Mathematics Research Notices, 2026(6): rnag045._ 2026],
    pub2: [Yifei Chen, Jihao Liu, and Yanze Wang. \
      *Flop between algebraically integrable foliations on potentially KLT varieties*. \
      _International Journal of Mathematics, 36(11):2550035._ 2025],
    pub3: [Yifei Chen and Yanze Wang. \
      *A Note on the Sarkisov Program*. \
      _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, London Mathematical Society Lecture Note Series, pages 231–263, Cambridge University Press._ 2025],
    pre1: [Jihao Liu and Yanze Wang. \
      *A klt generalized pair with infinitely generated canonical ring* (AI-generated, human-verified). \
      _arXiv:2608.03258._ 2026],
    pre2: [Jihao Liu and Yanze Wang. \
      *Twelve common flex lines in a general pencil of cubics* (AI-generated, human-verified). \
      _arXiv:2607.26396._ 2026],
    pre3: [Jihao Liu and Yanze Wang. \
      *A counterexample to the odd-dimensional rank bound for abelian p-group actions* (AI-generated, human-verified). \
      _arXiv:2607.04891._ 2026],

    // ---- software section (academic variant, compact) ----
    sw_skills: zh(lang, [_语言与工具：_ C++（libtorch）、Rust、C、Shell；Arch Linux + Neovim 日常开发环境；Git。],
                  [_Languages & tools:_ C++ (libtorch), Rust, C, Shell; daily development on Arch Linux + Neovim; Git.]),
    sw_projects: zh(lang, [_项目：_ Calman（Rust，任务与事件管理器，JSONL/ICS、兼容 CalDAV）、Markerss（Rust ratatui，TUI RSS 阅读器，设计文档驱动）、Lichtung（Hugo 主题，支撑两个个人站点）、#link("https://github.com/hiraethecho/suckless")[suckless]（手写 C 的 dwm/dwmblocks 个性化补丁）。],
                   [_Projects:_ Calman (Rust, task & event manager, JSONL/ICS, CalDAV-compatible), Markerss (Rust ratatui, TUI RSS reader, design-doc-driven), Lichtung (Hugo theme powering two personal sites), #link("https://github.com/hiraethecho/suckless")[suckless] (my own fork of dwm/dwmblocks, patched by hand in C).)]),
    sw_ai4math: zh(lang, [_AI4Math 工程：_ 搭建 AI 数学研究 harness；学习模型预训练、后训练与微调、数学数据处理，以及 Lean 4 形式化语言。],
                   [_AI4Math engineering:_ built a research harness for AI-assisted mathematics; learning model pre-training, post-training & fine-tuning, mathematical data processing, and the Lean 4 formalization language.]),

    // ---- industry summary ----
    summary: zh(lang,
      [数学博士生（双有理几何，中国科学院大学 AMSS），持续投入 AI4Math 实践：人工验证 AI 生成预印本 3 篇，搭建 AI 辅助数学研究 harness，探索 Lean 4 形式化。工程师型数学家：日常以 Rust / C 开发工具，正探索以 C++（libtorch）做 ML；Arch Linux 日常使用两年以上。求职方向：大模型数学能力的提升。感兴趣的方向包括：大模型训练、（数学）数据标注、面向推理的后训练（post-training）、PyTorch / libtorch 与 Lean 4 形式化。],
      [Ph.D. candidate in pure mathematics (birational geometry, AMSS–UCAS), active in AI4Math: three AI-generated, human-verified preprints, a research harness for AI-assisted mathematics, and ongoing Lean 4 exploration. Engineer-mathematician hybrid: ships tools in Rust and C day-to-day; exploring C++/libtorch for ML; daily Linux (Arch) user for 2+ years. Seeking an AI4Math role improving LLM mathematical capability. Areas of interest: LLM training, (mathematical) data annotation, post-training for reasoning, PyTorch / libtorch, and Lean 4 formalization.]),

    sk_lang: zh(lang, [_编程语言：_ C++（libtorch）、Rust、C、Shell。],
                [_Languages:_ C++ (libtorch), Rust, C, Shell.]),
    sk_sys: zh(lang, [_系统与工具：_ Linux（Arch，日常使用两年以上）、Git、Neovim；TUI 开发（ratatui）。],
               [_Systems & tooling:_ Linux (Arch, daily for 2+ years), Git, Neovim; TUI development (ratatui).]),
    sk_human: zh(lang, [_自然语言：_ 中文（母语）、英语（专业工作水平）。],
                 [_Human languages:_ Chinese (native), English (professional working).]),

    pj_calman: [Calman],
    pj_calman_short: "hiraethecho/calman",
    pj_calman_body: zh(lang,
      [终端任务与事件管理器（CLI + TUI，Rust）。JSONL / ICS 存储，兼容 CalDAV，配合自建 Radicale 服务器多端同步；同步委托给 git / pimsync / rclone。],
      [Task & event manager with CLI and TUI (Rust). JSONL/ICS storage, CalDAV-compatible; syncs across devices with a self-hosted Radicale server by delegating to git / pimsync / rclone.]),
    pj_markerss: [Markerss],
    pj_markerss_short: "hiraethecho/markerss",
    pj_markerss_body: zh(lang,
      [TUI RSS 阅读器（Rust，ratatui + feed-rs）：Markdown 导出、仅存 URL 的收藏模式。设计文档驱动：主分支维护 SPEC / PLAN / DESIGN，实现按语言分支（rust / go / cpp）。],
      [TUI RSS reader (Rust, ratatui + feed-rs): Markdown export, URL-only bookmarks. Design-first repo: main branch keeps SPEC / PLAN / DESIGN; implementations on per-language branches (rust / go / cpp).]),
    pj_lichtung: [Lichtung],
    pj_lichtung_short: "hiraethecho/lichtung",
    pj_lichtung_body: zh(lang,
      [Hugo 主题（Go 模板 / SCSS），以对话式 AI 辅助开发完成，支撑两个个人站点（技术文档与博客）。],
      [Hugo theme (Go templates / SCSS) built with conversational AI-assisted development; powers two personal sites (docs & blog).]),
    pj_suckless: [suckless],
    pj_suckless_short: "hiraethecho/suckless",
    pj_suckless_body: zh(lang,
      [自行 fork 的 dwm / dwmblocks（X11 动态平铺窗口管理器），以 C 手工打补丁维护（未经 AI 辅助）。],
      [My personal fork of dwm / dwmblocks (the X11 dynamic tiling window manager), patched and maintained by hand in C (no AI assistance).]),
  )
})

// -------------------------------------------------------------
// header / show-rule
// -------------------------------------------------------------
#let init(lang, phone: none) = {
  let t = T(lang)
  let fonts = if lang == "zh" {
    (text: ("Alegreya", "LXGW Neo XiHei"), head: ("Arial", "LXGW Neo XiHei"))
  } else {
    (text: ("Alegreya",), head: ("Arial",))
  }
  let secondary = if phone != none {
    [#t.secondary-email \ #phone \ #t.secondary-site \ #t.secondary-github \ #t.secondary-icons]
  } else {
    [#t.secondary-email \ #t.secondary-site \ #t.secondary-github \ #t.secondary-icons]
  }
  resume.with(
    col-args: (
      c1-len: col-cfg.c1-len,
      c2-len: col-cfg.c2-len,
      col-gutter: col-cfg.col-gutter,
    ),
    text-args: (font-family: fonts.text, font-size: 10pt),
    heading-args: (font-family: fonts.head, level1-font-size: 20pt, level3-align: right),
    author-info: (
      name: t.name,
      primary-info: t.primary,
      secondary-info: secondary,
    ),
  )
}

// -------------------------------------------------------------
// sections
// -------------------------------------------------------------
#let section_interests(lang) = ({
  let t = T(lang)
  [
== #t.h_interests

#t.interests
  ]
})

#let education(lang) = ({
  let t = T(lang)
  [
== #t.h_edu

#employment-head-item-list(
  (
    c2: t.amss,
    c3: t.beijing,
    body: [#t.phd_title\ #t.advisor],
  ),
  (
    c2: t.amss,
    c3: t.beijing,
    body: [#t.ms_title\ #t.ms_thesis\ #t.advisor],
  ),
  (
    c2: t.buaa,
    c3: t.beijing,
    body: [#t.bs_title\ #t.bs_thesis],
  ),
)
  ]
})

#let awards(lang) = ({
  let t = T(lang)
  [
== #t.h_awards

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  item-spacing: 0.8em,
  (c1: [], c2: t.award1),
  (c1: [], c2: t.award2),
  (c1: [], c2: t.award3),
)
  ]
})

#let publications_full(lang) = ({
  let t = T(lang)
  [
== #t.h_pubs

#pubs-reset()
#pub-item-list(t.pub1, t.pub2, t.pub3)

== #t.h_pre

#pubs-reset()
#pub-item-list(t.pre1, t.pre2, t.pre3)
  ]
})

#let publications_selected(lang) = ({
  let t = T(lang)
  [
== #t.h_sel_pubs

#pubs-reset()
#pub-item-list(t.pub1, t.pub2, t.pre1)
  ]
})

#let talks(lang) = ({
  let t = T(lang)
  [
== #t.h_talks

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  (c1: "2026", c2: t.talk1),
)
  ]
})

#let software_academic(lang) = ({
  let t = T(lang)
  [
== #t.h_sw

- #t.sw_skills
- #t.sw_projects
- #t.sw_ai4math
  ]
})

#let summary_industry(lang) = ({
  let t = T(lang)
  [
== #t.h_summary

#t.summary
  ]
})

#let skills_industry(lang) = ({
  let t = T(lang)
  [
== #t.h_skills

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  (c1: [], c2: t.sk_lang),
  (c1: [], c2: t.sk_sys),

  (c1: [], c2: t.sk_human),
)
  ]
})

#let projects_industry(lang) = ({
  let t = T(lang)
  [
== #t.h_projects

#employment-head-item-list(
  (c1: [], c2: [#t.pj_calman — #link("https://github.com/hiraethecho/calman")[#t.pj_calman_short]], c3: [], body: t.pj_calman_body),
  (c1: [], c2: [#t.pj_markerss — #link("https://github.com/hiraethecho/markerss")[#t.pj_markerss_short]], c3: [], body: t.pj_markerss_body),
  (c1: [], c2: [#t.pj_lichtung — #link("https://github.com/hiraethecho/lichtung")[#t.pj_lichtung_short]], c3: [], body: t.pj_lichtung_body),
  (c1: [], c2: [#t.pj_suckless — #link("https://github.com/hiraethecho/suckless")[#t.pj_suckless_short]], c3: [], body: t.pj_suckless_body),
)
  ]
})
