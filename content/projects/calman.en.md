---
title: "Calman"
date: 2026-08-29
description: A task & event manager in the terminal. Rust, iCalendar.
---

# Calman

Inspired by Taskwarrior, which is a wonderful and powerful task manager in the CLI.
However it is not convenient to sync tasks, and it does not support events. Also it is too powerful for me.
Cfait uses ICS files for storage, which is easy to work with CalDAV (I use Radicale as a server and sync with my phone). But the UI is too fancy for me.
Todoman is a cli that also uses ICS files, but I perfer Taskwarrior style commands.

Therefore I vibe-coded [this one](https://github.com/hiraethecho/calman). Written in Rust.

Stores tasks and events as JSONL or ICS (CalDAV-compatible); sync is delegated to external tools (git, vdirsyncer, rclone).
Status: mostly usable, but not every planned feature is implemented yet.

## Usage

```sh
cargo build --release        # binary: target/release/calman
calman add "buy milk" due:tomorrow pri:H +home
calman next                  # bare `calman` == next
calman list / done / start / stop / count / sync
```

- Filters: `+OVERDUE`, `type:event`, `rc.` overrides
- Recurrence: `recur:daily` / RFC 5545 RRULE
- Optional cargo features (e.g. `tui`, `recur-expand`)
- Two config tiers: `*.default.toml` (self-contained) vs `*.example.toml` (annotated)

More docs live in `docs/` (install, usage, recurrence, iCalendar, reports, filters) plus `SPEC.md` / `DESIGN.md` / `PLAN.md`.
