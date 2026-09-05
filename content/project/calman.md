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
