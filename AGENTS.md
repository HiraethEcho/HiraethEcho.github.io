# AGENTS.md — Project Rules

## Personal information: `readme.md` is the canonical standard

- `readme.md` in the repo root is the **single source of truth** for all personal
  information (姓名/name, 经历/experience, 教育/education, 论文/publications,
  项目/projects, 联系方式/contacts, 技能/skills, etc.).
- All other content that describes the person — including `cv-data.typ`
  (CV/resume PDF sources), `content/about*`, `content/experience*`,
  `content/skills*`, `content/_index*`, project profiles, etc. — must be
  **proofread against `readme.md`**.
- If a fact in another file conflicts with `readme.md`, treat `readme.md` as
  correct and update the other file to match (unless the user explicitly
  overrides).
- When the user updates personal info, update `readme.md` **first**, then
  propagate the change to CV/resume/website content in both Chinese and
  English versions.
- Do not silently introduce personal facts that are not recorded in
  `readme.md` into CV/resume/website content; ask the user first.

## General

- Never commit before the user approves.
- Keep CV/resume PDFs buildable: `./build-cv.sh`.