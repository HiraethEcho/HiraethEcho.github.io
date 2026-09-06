// =============================================================
// cv-data.typ — content (both languages) for the detailed 2-3 page
// CV PDFs. Format/layout lives in format-lib.typ.
// =============================================================
#import "format-lib.typ": *

// pick by language
#let zh(lang, cn, en) = if lang == "zh" { cn } else { en }

// -------------------------------------------------------------
// content
// -------------------------------------------------------------
#let T(lang) = (
  // ---- header ----
  name: zh(lang, "王延泽", "Yanze Wang"),
  primary: zh(lang, [
    数学博士生（双有理几何方向）\
    预计 2027 年 6 月毕业\
    中国科学院数学与系统科学研究院（中国科学院大学）\
    北京市海淀区中关村东路 55 号，100190
  ], [
    Ph.D. Candidate in Mathematics (Birational Geometry)\
    Expected Graduation: June 2027\
    AMSS, University of Chinese Academy of Sciences\
    No. 55 Zhongguancun East Road, Beijing 100190, China
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
  h-edu: zh(lang, "教育背景", "Education"),
  h-awards: zh(lang, "荣誉奖励", "Awards and Honors"),
  h-pubs: zh(lang, "发表论文", "Publications"),
  h-pre: zh(lang, "预印本", "Preprints"),
  h-theses: zh(lang, "学位论文", "Theses"),
  h-talks: zh(lang, "学术报告", "Invited Talks"),
  h-software: zh(lang, "软件与开源", "Software and Open Source"),
  h-ai4math: zh(lang, "AI4Math 工程", "AI4Math Engineering"),

  // ---- interests (detailed) ----
  interests: zh(lang, (
    [双有理几何与极小模型纲领：Sarkisov 纲领、代数可积叶层化、模空间。],
    [AI4Math：AI 生成数学结果的人工验证、Lean 4 形式化、数学专用模型的训练思路、研究 harness 搭建。],
    [正在学习：PyTorch / libtorch、LLM 预训练与后训练（post-training）、数学数据处理。],
  ), (
    [Birational geometry and the minimal model program: Sarkisov program, algebraically integrable foliations, and moduli spaces.],
    [AI4Math: human verification of AI-generated mathematical results, Lean 4 formalization, training approaches for math-specialized models, and research-harness building.],
    [Currently learning: PyTorch / libtorch, LLM pre-training and post-training, and mathematical data processing.],
  )),

  // ---- education ----
  edu: zh(lang, (
    (
      at: [2024 – 至今],
      body: [
        *数学博士（在读）*，中国科学院数学与系统科学研究院（中国科学院大学），预计 2027 年 6 月毕业。\
        _指导教师：_ 陈亦飞 教授。\
        研究方向：双有理几何——Sarkisov 纲领、代数可积叶层化。
      ],
    ),
    (
      at: [2022 – 2024],
      body: [
        *理学硕士*，中国科学院数学与系统科学研究院（中国科学院大学），2024 年 5 月。\
        _学位论文：_《叶层化对的 Sarkisov 纲领》。\
        _指导教师：_ 陈亦飞 教授。
      ],
    ),
    (
      at: [2016 – 2020],
      body: [
        *理学学士*，北京航空航天大学，2020 年 6 月。\
        _学位论文：_《曲线模空间》。
      ],
    ),
  ), (
    (
      at: [2024 – present],
      body: [
        *Ph.D. in Mathematics (in progress)*, AMSS, University of Chinese Academy of Sciences — expected June 2027.\
        _Advisor:_ Prof. Yifei Chen.\
        _Research:_ birational geometry — Sarkisov program, algebraically integrable foliations.
      ],
    ),
    (
      at: [2022 – 2024],
      body: [
        *M.S. in Mathematics*, AMSS, University of Chinese Academy of Sciences — May 2024.\
        _Thesis:_ "Sarkisov program for foliated pairs".\
        _Advisor:_ Prof. Yifei Chen.
      ],
    ),
    (
      at: [2016 – 2020],
      body: [
        *B.S. in Mathematics*, Beihang University — June 2020.\
        _Thesis:_ "Moduli space of curves".
      ],
    ),
  )),

  // ---- awards ----
  awards: zh(lang, (
    [美国大学生数学建模竞赛（MCM/ICM）— 一等奖（Meritorious Winner，两次）],
    [北京航空航天大学华罗庚奖学金（两次）],
    [中国科学院三好学生],
  ), (
    [MCM/ICM — Meritorious Winner (twice)],
    [Hua Luogeng Scholarship, Beihang University (twice)],
    [CAS — Merit Student of the Chinese Academy of Sciences],
  )),

  // ---- talks ----
  talks: zh(lang, (
    (
      at: [2026],
      body: [报告人，《代数可积与三维叶状结构的 Sarkisov 纲领》，西交利物浦大学。],
    ),
  ), (
    (
      at: [2026],
      body: [Speaker, *Sarkisov Program for Algebraically Integrable and Threefold Foliations*, Xi'an Jiaotong-Liverpool University.],
    ),
  )),

  // ---- publications (with abstracts) ----
  pubs: (
    (
      cite: [*Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
        Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._ 2026],
      abstract: zh(lang, [
        借助伴随叶层化结构的极小模型纲领理论，我们建立 klt 簇上代数可积叶层化的 Sarkisov 纲领：此类结构的任意两个 Mori 纤维空间由一列 Sarkisov 链环连接。结合 R. Mascharak 的结果，我们建立具有温和奇点的至多三维叶层化的 Sarkisov 纲领；其对数版本与伴随叶层化版本亦被建立。
      ], [
        By applying the theory of the minimal model program for adjoint foliated structures, we establish the Sarkisov program for algebraically integrable foliations on klt varieties: any two Mori fiber spaces of such a structure are connected by a sequence of Sarkisov links. Combining with a result of R. Mascharak, we establish the Sarkisov program for foliations in dimension at most 3 with mild singularities. Log and adjoint-foliated versions of the aforementioned Sarkisov programs are also established.
      ]),
    ),
    (
      cite: [*Flop between algebraically integrable foliations on potentially KLT varieties*. \
        Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._ 2025],
      abstract: zh(lang, [
        我们证明：对潜 klt 簇上 lc 代数可积叶层化三元组的任意两个极小模型，存在由一列 flop 连接的小双有理模型。特别地，ℚ-阶乘 klt 簇上 lc 代数可积叶层化三元组的任意两个极小模型由一列 flop 连接。在假设广义叶层化四元组极小模型纲领成立的前提下，我们还讨论三维簇上可能非代数可积叶层化的极小模型之间的联系。
      ], [
        We prove that for any two minimal models of an lc algebraically integrable foliated triple on potentially klt varieties, there exist small birational models that are connected by a sequence of flops. In particular, any two minimal models of lc algebraically integrable foliated triples on ℚ-factorial klt varieties are connected by a sequence of flops. We also discuss the connection between minimal models for possibly non-algebraically integrable foliations on threefolds, assuming the minimal model program for generalized foliated quadruples.
      ]),
    ),
    (
      cite: [*A Note on the Sarkisov Program*. \
        Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, London Mathematical Society Lecture Note Series, pages 231–263, Cambridge University Press._ 2025],
      abstract: zh(lang, [
        本文介绍 Sarkisov 纲领的三种方法：该纲领将对数 Mori 纤维空间之间的双有理映射分解为初等 Sarkisov 链环。
      ], [
        This note introduces three methods of the Sarkisov program, which factorizes birational maps of log Mori fibre spaces into elementary Sarkisov links.
      ]),
    ),
  ),

  // ---- preprints (with abstracts) ----
  pres: (
    (
      cite: [*A klt generalized pair with infinitely generated canonical ring* (AI-generated, human-verified). \
        Jihao Liu and Yanze Wang. _arXiv:2608.03258._ 2026],
      abstract: zh(lang, [
        我们构造一个射影 klt 广义对 (X, B, M)，其广义对数典范环 R(X, K_X+B+M) 无限生成。这给出首个 −K_X nef 且反典范环 R(X, −K_X) 非有限生成的 klt 簇 X 的例子。
      ], [
        We construct a projective klt generalized pair (X, B, M) with infinitely generated generalized log canonical ring R(X, K_X+B+M). This gives the first example of a klt variety X with −K_X nef whose anticanonical ring R(X, −K_X) is not finitely generated.
      ]),
    ),
    (
      cite: [*Twelve common flex lines in a general pencil of cubics* (AI-generated, human-verified). \
        Jihao Liu and Yanze Wang. _arXiv:2607.26396._ 2026],
      abstract: zh(lang, [
        我们证明 ℂ 上一般平面三次曲线束恰有 12 条公共拐线，回答 Ciliberto、Miranda 与 Roe 的一个问题。
      ], [
        We prove that a general pencil of plane cubics over ℂ has exactly 12 common flex lines. This answers a question of Ciliberto, Miranda, and Roe.
      ]),
    ),
    (
      cite: [*A counterexample to the odd-dimensional rank bound for abelian p-group actions* (AI-generated, human-verified). \
        Jihao Liu and Yanze Wang. _arXiv:2607.04891._ 2026],
      abstract: zh(lang, [
        我们给出 Moraga 所猜测的、光滑 Calabi-Yau 簇上忠实阿贝尔 p-群作用之秩界的奇维推广的反例。
      ], [
        We give a counterexample to the odd-dimensional extension of the rank bound for faithful abelian p-group actions on smooth Calabi-Yau varieties, conjectured by Moraga.
      ]),
    ),
  ),

  // ---- theses (with abstracts) ----
  theses: zh(lang, (
    [
      *硕士：* 《叶层化对的 Sarkisov 纲领》（2024）。\
      摘要：极小模型纲领在每一固定的双有理等价类中寻找好代表元，它们分为极小模型与 Mori 纤维空间两类。本文介绍 Sarkisov 纲领的三种方法，并尝试建立叶层化对的 Sarkisov 纲领：通过将 F-dlt 叶层化对约化为 klt 对，得到叶层化 Mori 纤维空间之间双有理映射的弱分解。
    ],
    [
      *学士：* 《曲线模空间》（2020）。\
      摘要：本文借助几何不变量理论（GIT）与叠理论构造曲线模空间及其紧化：介绍光滑曲线与 DM 稳定曲线，给出范畴论、叠理论、Hilbert 概形与 GIT 等工具，构造两类曲线模空间，最后提出进一步问题并讨论其它模空间。
    ],
  ), (
    [
      *M.S.:* "Sarkisov program for foliated pairs" (2024).\
      Abstract: the minimal model program seeks a good representative in each birational equivalence class; these representatives split into minimal models and Mori fiber spaces. The thesis introduces the three methods of the Sarkisov program and establishes it for foliated pairs — by reducing F-dlt foliated pairs to klt pairs, one obtains a weak decomposition of birational maps between foliated Mori fiber spaces.
    ],
    [
      *B.S.:* "Moduli space of curves" (2020).\
      Abstract: this report constructs moduli spaces of curves and their compactifications via geometric invariant theory (GIT) and stack theory — introducing smooth and DM stable curves, developing the necessary tools (category theory, stack theory, Hilbert scheme, GIT), constructing two kinds of curve moduli spaces, and closing with further questions.
    ],
  )),

  // ---- software: languages & tools ----
  skills-sw: zh(lang, [
    *语言与工具：* C++（libtorch）、Rust、C、Shell；Arch Linux（Niri/dwm）+ Neovim 日常开发环境；Git；LaTeX；TUI 开发（ratatui）。
  ], [
    *Languages & tools:* C++ (libtorch), Rust, C, Shell; daily development on Arch Linux (Niri/dwm) + Neovim; Git; LaTeX; TUI development (ratatui).
  ]),

  // ---- software: projects (detailed) ----
  projects: zh(lang, (
    (
      at: [#link("https://github.com/hiraethecho/calman")[Calman]],
      body: [终端任务与事件管理器（CLI + TUI，Rust）。JSONL / ICS 存储，兼容 CalDAV，配合自建 Radicale 服务器多端同步；同步委托给 git / vdirsyncer / rclone。vibe coding 开发。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/markerss")[Markerss]],
      body: [TUI RSS 阅读器（Rust，ratatui + feed-rs）：Markdown 导出、仅存 URL 的收藏模式。设计文档驱动：主分支维护 SPEC / PLAN / DESIGN，实现按语言分支（rust / go / cpp）。vibe coding 开发。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/lichtung")[Lichtung]],
      body: [Hugo 主题（Go 模板 / SCSS），以对话式 AI 辅助开发完成，支撑两个个人站点（技术文档与博客）。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/suckless")[suckless]],
      body: [自行 fork 的 dwm / dwmblocks（X11 动态平铺窗口管理器等桌面组件，C 语言），以手工补丁方式维护（未经 AI 辅助）。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/AiKit")[AiKit]],
      body: [面向编码智能体的 AI 工具集合（尤其 pi）：代理（pi、opencode、codex、claude code 等）、pi 扩展（rtk、cave、toon、doc、role）、skills、人设与快速部署脚本。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/Rethlas")[Rethlas]],
      body: [fork 并改进了 Rethlas：一个围绕两个 Codex 智能体的自然语言数学推理系统——生成智能体书写非形式证明蓝图，验证智能体检查蓝图并给出结构化结论，run.sh 驱动迭代式证明与修复循环。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/mumble")[mumble]],
      body: [一个简单留言板页面（JavaScript），基于 Cloudflare Worker，可独立部署或嵌入其他页面。],
    ),
    (
      at: [#link("https://github.com/hiraethecho/cutui")[cutui]],
      body: [简单的 TUI 视频编辑器（Rust）。],
    ),
  ), (
    (
      at: [#link("https://github.com/hiraethecho/calman")[Calman]],
      body: [Task & event manager with CLI and TUI (Rust). JSONL/ICS storage, CalDAV-compatible; syncs across devices with a self-hosted Radicale server by delegating to git / vdirsyncer / rclone. Vibe-coded.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/markerss")[Markerss]],
      body: [TUI RSS reader (Rust, ratatui + feed-rs): Markdown export, URL-only bookmarks. Design-first repo: main branch keeps SPEC / PLAN / DESIGN; implementations on per-language branches (rust / go / cpp). Vibe-coded.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/lichtung")[Lichtung]],
      body: [Hugo theme (Go templates / SCSS) built with conversational AI-assisted development; powers two personal sites (docs & blog).],
    ),
    (
      at: [#link("https://github.com/hiraethecho/suckless")[suckless]],
      body: [Personal fork of dwm / dwmblocks (X11 dynamic tiling window manager and related desktop components, written in C), patched and maintained by hand (no AI assistance).],
    ),
    (
      at: [#link("https://github.com/hiraethecho/AiKit")[AiKit]],
      body: [AI tool collection for coding agents (especially pi): agents (pi, opencode, codex, claude code, …), pi extensions (rtk, cave, toon, doc, role), skills, personas, and quick-deploy scripts.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/Rethlas")[Rethlas]],
      body: [Forked and extended Rethlas: a natural-language math-reasoning system built around two Codex agents — a generation agent writes informal proof blueprints, a verification agent checks them and issues structured verdicts; run.sh drives an iterative proof-and-repair loop.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/mumble")[mumble]],
      body: [A simple message-board page (JavaScript) on a Cloudflare Worker: deploy standalone or embed into other pages.],
    ),
    (
      at: [#link("https://github.com/hiraethecho/cutui")[cutui]],
      body: [A simple TUI video editor (Rust).],
    ),
  )),

  // ---- AI4Math engineering ----
  ai4math: zh(lang, (
    [*研究 harness：* 搭建并维护 AI 辅助数学研究的工作流（Rethlas 的 fork 与改进）。],
    [*Lean 4：* 学习形式化与证明仓库维护。],
    [*学习与探索：* LLM 预训练、后训练与数学数据处理；PyTorch / libtorch 在数学场景的应用。],
  ), (
    [*Research harness:* built and maintained an AI-assisted mathematics workflow (fork and extension of Rethlas).],
    [*Lean 4:* learning formalization and proof-repo maintenance.],
    [*Learning & exploring:* LLM pre-training, post-training, and mathematical data processing; PyTorch / libtorch applications in mathematics.],
  )),
)

// -------------------------------------------------------------
// rendering helpers (cv-specific)
// -------------------------------------------------------------
#let math-item(n, cite, abstract) = {
  block(
    above: 0.4em,
    below: 0.4em,
    [
      #text(weight: "bold")[(#n)] #cite
      #if abstract != [] [
        #v(0.18em)
        #text(size: 9.3pt, fill: rgb("#444444"))[_Abstract:_ #abstract]
      ]
    ],
  )
}

// ---- render all CV sections for a language ----
#let cv(lang) = {
  let t = T(lang)
  let headings = (
    interests: t.h-interests,
    edu: t.h-edu,
    awards: t.h-awards,
    pubs: t.h-pubs,
    pre: t.h-pre,
    theses: t.h-theses,
    talks: t.h-talks,
    software: t.h-software,
    ai4math: t.h-ai4math,
  )
  [
= #headings.interests

#tight-list(t.interests)

#section-divider()

= #headings.edu

#entry-list(t.edu)

#section-divider()

= #headings.awards

#tight-list(t.awards)

#section-divider()

= #headings.pubs

#for (i, p) in t.pubs.enumerate() [
  #math-item(i + 1, p.cite, p.abstract)
]

#section-divider()

= #headings.pre

#for (i, p) in t.pres.enumerate() [
  #math-item(i + 1, p.cite, p.abstract)
]

#section-divider()

= #headings.theses

#tight-list(t.theses)

#section-divider()

= #headings.talks

#entry-list(t.talks)

#section-divider()

= #headings.software

#t.skills-sw

#entry-list(t.projects)

#section-divider()

= #headings.ai4math

#tight-list(t.ai4math)
  ]
}