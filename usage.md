# How to modify

## _config.yml

## files

The entry director of all files is `_pages`:

```
_pages
├── 404.md
├── about.md
├── about_einstein.md
├── blog.md
├── books.md
├── cv.md
├── dropdown.md
├── news.md
├── profiles.md
├── projects.md
├── publications.md
├── repositories.md
└── teaching.md
```

In the yaml of `_pages/*.md`, there are

```yaml
---
layout: about, page, default etc
title: about
permalink: /
nav: true or false
---
```

`_pages/blog.md` concludes files in `_posts/`. Similarly,
- `projects.md` -> `_projects/`
- `books.md` -> `_books/`

'news.md' use `_includes/news.liquid` to conclude files in `_news/`
`publications.md` use `_bibliography/papers.bib`
`cv.md` uses `_data/cv.yml`

`profiles.md` use yaml:
```ymal
---
layout: profiles
permalink: /people/
title: people
description: members of the lab or group
nav: false
nav_order: 7

profiles:
  # if you want to include more than one profile, just replicate the following block
  # and create one content file for each profile inside _pages/
  - align: right
    image: prof_pic.jpg
    content: about_einstein.md
    image_circular: false # crops the image to make it circular
    more_info: >
      <p>555 your office number</p>
      <p>123 your address street</p>
      <p>Your City, State 12345</p>
  - align: left
    image: prof_pic.jpg
    content: about_einstein.md
    image_circular: false # crops the image to make it circular
    more_info: >
      <p>555 your office number</p>
      <p>123 your address street</p>
      <p>Your City, State 12345</p>
---
```

`_pages/repositories` use `_data/repositories.yml`


submenu, `_pages/dropdown` for example.
