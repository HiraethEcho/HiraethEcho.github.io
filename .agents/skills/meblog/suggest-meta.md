---
name: suggest-meta
description: "recommend metadata, taxonomy, filename, or folder for a blog article. Trigger keywords: suggest-meta, 推荐 frontmatter, 推荐 taxonomy, 推荐文件名, 推荐目录."
---

# Suggest Meta — 推荐文章元信息

根据 `style.md` 的写作类型、taxonomy 和内容位置规则，为文章推荐 frontmatter、文件名和存放路径。

## 工作流

### 1. 读取输入
确认文章路径（如未给，问一句）。可能来自 `forest/`、`glade/` 或自然语言。

### 2. 读取 style.md
- 第 1 节 → 写作类型
- 第 2 节 → taxonomy
- 第 3-4 节 → 子文件夹规则

### 3. 分析文章
结合正文和 frontmatter 判断：
- **写作类型**：critique / kulturprodukte / introspection / philosophical / mumble / weblog 等
- **成熟度**：idea / outline / draft / alpha
- **内容来源**：原创 / 剪报 / 摘录 / 素材 / 日记 / 网志
- **文章形态**：长文 / 短文 / 笔记 / 草稿 / 日志

### 4. 推荐 metadata

```yaml
---
title: 推荐标题
categories: writing_type
genres: recommended_genre  # 可选
series: recommended_series # 可选
topics:
  - topic1
tags:
  - tag1
  - tag2
  - tag3
---
```

推荐子文件夹：`glade/essay/` / 推荐文件名：`english-name.md` / 推荐路径：`glade/essay/english-name.md`

推荐理由：简述写作类型、taxonomy 和目录判断依据。

### 判断原则

- 未成形 → 留在 `forest/`，不入 `glade/`
- 网络事件/评论观察 → `forest/weblog/`
- 完整论证/文化产品分析 → `glade/essay/`
- 轻量观点/短随笔 → `glade/memo/`
- 概念整理/读书笔记 → `garden/note/`
- 新增 tag → 说明是否已有足够文章支撑