# Changelog

All notable changes to this project will be documented in this file.

## [0.3.1] - 2026-02-18

### Fixed

- Replaced all `${CLAUDE_PLUGIN_ROOT}` paths in `git-worktree` with relative `scripts/worktree-manager.sh` (21 occurrences)
- Replaced `.agents/skills/` paths in `workflows-review` and `best-practices-researcher` with correct relative/discovery paths
- Fixed `workflows-review` section numbering (was 1, 4, 6, 4, 5, 7 → now sequential 1–6)
- Fixed broken code fence around summary report template in `workflows-review`
- Fixed truncated sentence in `workflows-review` task list
- Removed stray closing code fences in `workflows-review`
- Promoted orphaned "Key principles" text to proper heading in `spec-flow-analyzer`

### Changed

- Normalized `sub-agents`/`sub-agent` → `subagents`/`subagent` in `workflows-review`

## [0.3.0] - 2026-02-18

### Added

- `scripts/install.sh` for installing commands and skills to claude, codex, or gemini targets
- Gemini target support (skills only to `~/.gemini/skills/`)
- `triage` skill for categorizing and tracking findings (ported from upstream command)

### Removed

- `style-editor` skill and all cross-references
- `rclone` skill and all cross-references
- `schema-drift-detector` skill (Ruby/Rails-specific) and cross-references
- rclone upload steps from `feature-video` skill

### Changed

- For claude target, commands that duplicate a skill are skipped (skills take precedence)
- Fixed `resolve_pr_parallel` script paths to use relative paths instead of `${CLAUDE_PLUGIN_ROOT}`
- Fixed `resolve_pr_parallel` directory name mismatch (hyphens → underscores)
- Replaced `TodoWrite` references with generic task terminology across skills
- Removed Rails-specific Todo model docs from `file-todos`
- Removed generated `config.toml` (MCP server config)

## [0.2.0] - 2026-02-18

### Added

- `test-reviewer` skill for regression test creation and prevention strategies
- `xcode-test` skill for iOS simulator testing (ported from agent-scripts archive)

### Changed

- Simplified workflow commands to delegate to matching skills
- Made all skill references agent-agnostic (removed `$` prefixes, backtick-wrapped names)
- Normalized skill references across all files (removed `/` and `/workflows:` prefixes)
- Replaced `/prompts:X` references with plain skill names, fixed broken URLs from codex conversion
- Removed ULTRA-THINK prefixes and Claude Code attribution lines
- Synced `agent-browser` skill from upstream [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser)
- Renamed `every-style-editor` → `style-editor`, renamed reference file to `style.md`
- Extracted inline templates into `assets/` directories (brainstorming, workflows-plan)

### Removed

- 11 language/framework-specific skills: `andrew-kane-gem-writer`, `ankane-readme-writer`, `dhh-rails-reviewer`, `dhh-rails-style`, `dspy-ruby`, `kieran-python-reviewer`, `kieran-rails-reviewer`, `kieran-typescript-reviewer`, `julik-frontend-races-reviewer`, `lint`, `every-style-editor-2`
- Cleaned cross-references to removed skills across all files

## [0.1.0] - 2026-02-18

### Added

- Initial import from [compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin) v2.34.1
- 9 commands converted from codex prompts (deepen-plan, feature-video, resolve_todo_parallel, test-browser, 5 workflow commands)
- 20 skills copied directly from source plugin
- 29 skills generated from original agents (design, docs, research, review, workflow categories)
- 10 skills generated from original commands
- MCP server configuration (context7)
- Mapping document tracking all original-to-installed relationships (`docs/mapping.md`)
- MIT license (same as upstream)
