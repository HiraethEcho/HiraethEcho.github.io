---
title: "Cutui"
date: 2026-08-29
description: A tui video editor
---

## Motivation

I have an DJI action4 shoting views while riding, so I want to do some simple video editing quickly.  
The idea is to cut and contact videos using (of course) ffmpeg. So I have to find the in and out point of videos, and then contact them. If no render needed, ffmpeg can just copy the videos losslessly (for example [LosslessCut](https://losslesscut.app/) is a GUI wrap of ffmpeg to cut clips from videos).
But it is almost impossible to type the cli command by hand, and it is also hard to find the cut point.

## Idea

Inspired by [ninve](https://github.com/Niedzwiedzw/ninve), I decide to build a tui video editor that uses mpv for preview (and find in, out point) and uses ffmpeg for export.

## Progress

This is far from finished, for now it is just a MVP (I even haven't decide to use either go or rust).

GitHub: [hiraethecho/cutui](https://github.com/hiraethecho/cutui)
