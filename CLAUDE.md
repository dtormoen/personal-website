# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

A personal blog built with [Zola](https://www.getzola.org/) using the [Kita](https://github.com/st1020/kita) theme (installed as a git submodule).

## Commands

- `just serve` — local dev server with live reload (opens browser, includes drafts)
- `just build` — production build
- `just check` — validate links and config
- `just precommit` — runs `zola build` and `zola check` to prepare for committing changes

## Content Structure

- **Blog posts** go in `content/` as `.md` files with TOML frontmatter (title, date, description, tags)
- **Static pages** (about, archive) go in `content/pages/` — the archive page uses `template = "archive.html"` and `section = "_index.md"` in its frontmatter
- Posts are sorted by date and paginated (configured in `content/_index.md`)
- Use `<!-- more -->` to set the excerpt cutoff for listing pages

## Theme

The Kita theme lives in `themes/kita/` as a git submodule. To override a template, copy it from `themes/kita/templates/` into `templates/` and modify it there.

Enabled features: KaTeX math (`$$...$$`), Mermaid diagrams (`{% mermaid() %}` shortcode — supports wrapping in ` ```mermaid ` fences for editor highlighting), floating side table of contents.
