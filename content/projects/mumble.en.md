---
title: "Mumble"
date: 2026-08-29
description: A minimalist cloud message board — Cloudflare Workers + D1, embeddable in other pages.
---

# Mumble

[Mumble](https://github.com/hiraethecho/mumble) is a minimalist cloud message board: a native HTML/CSS/JS frontend with a Cloudflare Workers + D1 backend. Zero framework, zero dependencies. It can be deployed as a standalone page or embedded into other pages (`/embed`).

## Run locally

```sh
npx wrangler dev --local
```

Serves at <http://localhost:8787> (embed mode at `/embed`).

## Deploy

```sh
npx wrangler d1 create mumble-db     # create the D1 database
# put the returned database_id into wrangler.toml
npx wrangler deploy
```

## Configure

- `public/config.js` — frontend configuration
- `wrangler.toml` `[vars]` — `ADMIN_EMAIL`, `ADMIN_PASSWORD`, `SESSION_SECRET` (use Dashboard environment variables in production)
- Custom styles: `public/static/css/custom.css` / `custom-embed.css`

## Workflow

Register → an admin approves the account → post/reply. Editing and deletion are admin-only.

GitHub: [hiraethecho/mumble](https://github.com/hiraethecho/mumble)