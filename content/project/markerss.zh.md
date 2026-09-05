---
title: "Markerss"
date: 2026-08-29
description: 一款基于终端界面的 RSS 订阅阅读器
---

我此前长期使用 Newsboat，其表现可圈可点。但我希望引入若干额外功能：

- 将内容导出为 Markdown 文件；
- 收藏喜欢的文章，但仅在本地保存链接（URL）而非全文内容；
- 订阅源的管理不局限于标签体系，同时提供更便捷的浏览方式。

现有的优秀终端 RSS 阅读器为数不少，但总与上述需求存在些许出入。

为此，我设计并实现了[这一阅读器](https://github.com/hiraethecho/markerss)。

项目以 Rust 编写（基于 ratatui 与 feed-rs），采用设计优先（design-first）的开发流程：主分支存放 [SPEC](https://github.com/hiraethecho/markerss/blob/main/SPEC.md)、PLAN 与 DESIGN 文档，具体实现则分布在按语言划分的分支上（rust/go/cpp）。当前状态：功能已基本完成。
