---
title: "Cutui"
date: 2026-08-29
description: A TUI video editor
---

## Motivation

I have a DJI Action 4 shooting videos while riding, so I want to do some simple video editing quickly.
The idea is to cut and concatenate videos using (of course) FFmpeg. So I have to find the in and out points of videos, and then concatenate them. If no rendering is needed, FFmpeg can just copy the videos losslessly (for example [LosslessCut](https://losslesscut.app/) is a GUI wrapper of FFmpeg to cut clips from videos).
But it is almost impossible to type the CLI command by hand, and it is also hard to find the cut points.

## Idea

Inspired by [ninve](https://github.com/Niedzwiedzw/ninve), I decide to build a TUI video editor that uses mpv for preview (and to find in and out points) and uses FFmpeg for export.

## Progress

This is far from finished; for now it is just an MVP, written in Rust.

GitHub: [hiraethecho/cutui](https://github.com/hiraethecho/cutui)