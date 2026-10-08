---
title: "Mumble"
date: 2026-08-29
description: 极简云端留言板——Cloudflare Workers + D1，可嵌入其它页面。
---

# Mumble

[Mumble](https://github.com/hiraethecho/mumble) 是一个极简云端留言板：原生 HTML/CSS/JS 前端，后端为 Cloudflare Workers + D1。零框架、零依赖。既可独立部署为独立页面，也可嵌入其它页面（`/embed`）。

## 本地运行

```sh
npx wrangler dev --local
```

服务地址 <http://localhost:8787>（嵌入模式为 `/embed`）。

## 部署

```sh
npx wrangler d1 create mumble-db     # 创建 D1 数据库
# 将返回的 database_id 填入 wrangler.toml
npx wrangler deploy
```

## 配置

- `public/config.js` — 前端配置
- `wrangler.toml` `[vars]` — `ADMIN_EMAIL`、`ADMIN_PASSWORD`、`SESSION_SECRET`（生产环境建议使用 Dashboard 环境变量）
- 自定义样式：`public/static/css/custom.css` / `custom-embed.css`

## 工作流程

注册 → 管理员批准账号 → 发布/回复。编辑与删除仅限管理员。

GitHub：[hiraethecho/mumble](https://github.com/hiraethecho/mumble)