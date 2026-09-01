---
title: "Markerss"
date: 2026-08-29
description: A TUI RSS reader
---

I used to use Newsboat, which is great.
But I want several features:

- export markdown files
- save some articles I like, but not store content locally, only the URL
- manage feeds not only with tags, but navigate feeds easier

There are many great TUI RSS readers, but they are all a little bit different from my needs here and there.
So I vibe-coded [this one](https://github.com/hiraethecho/markerss).

Written in Rust (ratatui + feed-rs), design-first: main branch holds [SPEC](https://github.com/hiraethecho/markerss/blob/main/SPEC.md)/PLAN/DESIGN, implementations live on per-language branches (rust/go/cpp). Status: basically complete.