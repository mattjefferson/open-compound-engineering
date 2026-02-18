# Compound Engineering Plugin Mapping

Source: `compound-engineering` plugin v2.34.1 from [EveryInc/compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin)
Converted via: `compound-plugin install --to codex` (commands=prompts)

## Commands (commands/)

Original Claude commands converted to codex prompts, installed as `commands/*.md`.
Workflow commands are simplified to delegate to their matching skill.

| Installed Command | Original Source | Status | Description |
|---|---|---|---|
| `deepen-plan.md` | `commands/deepen-plan.md` | active | Enhance a plan with parallel research agents |
| `feature-video.md` | `commands/feature-video.md` | active | Record a video walkthrough of a feature |
| `resolve_todo_parallel.md` | `commands/resolve_todo_parallel.md` | active | Resolve all pending CLI todos using parallel processing |
| `test-browser.md` | `commands/test-browser.md` | active | Run browser tests on pages affected by current PR or branch |
| `workflows-brainstorm.md` | `commands/workflows/brainstorm.md` | active | Explore requirements and approaches through collaborative dialogue |
| `workflows-compound.md` | `commands/workflows/compound.md` | active | Document a recently solved problem to compound team knowledge |
| `workflows-plan.md` | `commands/workflows/plan.md` | active | Transform feature descriptions into well-structured project plans |
| `workflows-review.md` | `commands/workflows/review.md` | active | Perform exhaustive code reviews using multi-agent analysis |
| `workflows-work.md` | `commands/workflows/work.md` | active | Execute work plans efficiently while maintaining quality |

### Original commands not converted to prompts

These original commands exist only as generated skills (the codex converter created a skill for each but did not emit a prompt).

| Original Source | Description |
|---|---|
| `commands/agent-native-audit.md` | Run comprehensive agent-native architecture review with scored principles |
| `commands/changelog.md` | Create engaging changelogs for recent merges to main branch |
| `commands/create-agent-skill.md` | Create or edit Claude Code skills with expert guidance |
| `commands/deploy-docs.md` | Validate and prepare documentation for GitHub Pages deployment |
| `commands/generate_command.md` | Create a new custom slash command following conventions |
| `commands/heal-skill.md` | Fix incorrect SKILL.md files with wrong instructions or outdated API references |
| `commands/lfg.md` | Full autonomous engineering workflow |
| `commands/report-bug.md` | Report a bug in the compound-engineering plugin |
| `commands/reproduce-bug.md` | Reproduce and investigate a bug using logs, console, and browser screenshots |
| `commands/resolve_parallel.md` | Resolve all TODO comments using parallel processing |
| `commands/slfg.md` | Full autonomous engineering workflow using swarm mode |
| `commands/test-xcode.md` | Build and test iOS apps on simulator using XcodeBuildMCP |
| `commands/triage.md` | Triage and categorize findings for the CLI todo system |

## Skills (skills/)

### Directly copied from source plugin skills

| Original Name | Installed As | Status | Description |
|---|---|---|---|
| `andrew-kane-gem-writer` | — | **removed** | Write Ruby gems following Andrew Kane's style |
| `agent-browser` | `agent-browser` | active | Browser automation CLI for AI agents |
| `agent-native-architecture` | `agent-native-architecture` | active | Build applications where agents are first-class citizens |
| `brainstorming` | `brainstorming` | active | Explore user intent, approaches, and design decisions before planning |
| `compound-docs` | `compound-docs` | active | Compound engineering documentation |
| `compound-foundations` | `compound-foundations` | active | Compound engineering foundations |
| `create-agent-skills` | `create-agent-skills` | active | Expert guidance for creating Claude Code skills |
| `dhh-rails-style` | — | **removed** | DHH-style Rails development patterns |
| `document-review` | `document-review` | active | Refine brainstorm or plan documents before next workflow step |
| `dspy-ruby` | — | **removed** | DSPy Ruby integration |
| `every-style-editor` | `style-editor` | **renamed** | Edit text to conform to editorial style guide |
| `file-todos` | `file-todos` | active | File-based TODO management |
| `frontend-design` | `frontend-design` | active | Create distinctive, production-grade frontend interfaces |
| `gemini-imagegen` | `gemini-imagegen` | active | Generate and edit images using Gemini API |
| `git-worktree` | `git-worktree` | active | Manage Git worktrees for isolated parallel development |
| `orchestrating-swarms` | `orchestrating-swarms` | active | Orchestrate parallel agent swarms |
| `rclone` | `rclone` | active | Upload, sync, and manage files across cloud storage |
| `resolve-pr-parallel` | `resolve-pr-parallel` | active | Resolve PR comments in parallel |
| `setup` | `setup` | active | Plugin setup and configuration |
| `skill-creator` | `skill-creator` | active | Create and manage skills |

### Generated from original agents

| Original Name | Original Agent | Installed As | Status | Description |
|---|---|---|---|---|
| `agent-native-reviewer` | `agents/review/agent-native-reviewer` | `agent-native-reviewer` | active | Reviews code for agent-native parity |
| `ankane-readme-writer` | `agents/docs/ankane-readme-writer` | — | **removed** | Creates READMEs following Ankane-style template |
| `architecture-strategist` | `agents/review/architecture-strategist` | `architecture-strategist` | active | Analyzes code changes for pattern compliance and design integrity |
| `best-practices-researcher` | `agents/research/best-practices-researcher` | `best-practices-researcher` | active | Researches external best practices and documentation |
| `bug-reproduction-validator` | `agents/workflow/bug-reproduction-validator` | `bug-reproduction-validator` | active | Reproduces and validates bug reports |
| `code-simplicity-reviewer` | `agents/review/code-simplicity-reviewer` | `code-simplicity-reviewer` | active | Final review pass for YAGNI violations and simplification |
| `data-integrity-guardian` | `agents/review/data-integrity-guardian` | `data-integrity-guardian` | active | Reviews database migrations and data models for safety |
| `data-migration-expert` | `agents/review/data-migration-expert` | `data-migration-expert` | active | Validates data migrations and production data transformations |
| `deployment-verification-agent` | `agents/review/deployment-verification-agent` | `deployment-verification-agent` | active | Produces Go/No-Go deployment checklists |
| `design-implementation-reviewer` | `agents/design/design-implementation-reviewer` | `design-implementation-reviewer` | active | Compares live UI against Figma designs |
| `design-iterator` | `agents/design/design-iterator` | `design-iterator` | active | Iteratively refines UI design through screenshot-analyze-improve cycles |
| `dhh-rails-reviewer` | `agents/review/dhh-rails-reviewer` | — | **removed** | Brutally honest Rails code review from DHH's perspective |
| `every-style-editor-2` | `agents/workflow/every-style-editor` | — | **removed** | Reviews text for Every's editorial style compliance (deduplicated name) |
| `figma-design-sync` | `agents/design/figma-design-sync` | `figma-design-sync` | active | Detects and fixes visual differences between web and Figma |
| `framework-docs-researcher` | `agents/research/framework-docs-researcher` | `framework-docs-researcher` | active | Gathers documentation and best practices for frameworks |
| `git-history-analyzer` | `agents/research/git-history-analyzer` | `git-history-analyzer` | active | Archaeological analysis of git history |
| `julik-frontend-races-reviewer` | `agents/review/julik-frontend-races-reviewer` | — | **removed** | Reviews JS/Stimulus code for race conditions |
| `kieran-python-reviewer` | `agents/review/kieran-python-reviewer` | — | **removed** | Reviews Python code for Pythonic patterns and type safety |
| `kieran-rails-reviewer` | `agents/review/kieran-rails-reviewer` | — | **removed** | Reviews Rails code for conventions and maintainability |
| `kieran-typescript-reviewer` | `agents/review/kieran-typescript-reviewer` | — | **removed** | Reviews TypeScript code for type safety and modern patterns |
| `learnings-researcher` | `agents/research/learnings-researcher` | `learnings-researcher` | active | Searches past solutions to surface institutional knowledge |
| `lint` | `agents/workflow/lint` | — | **removed** | Linting and code quality checks on Ruby and ERB files |
| `pattern-recognition-specialist` | `agents/review/pattern-recognition-specialist` | `pattern-recognition-specialist` | active | Analyzes code for design patterns and anti-patterns |
| `performance-oracle` | `agents/review/performance-oracle` | `performance-oracle` | active | Analyzes code for performance bottlenecks |
| `pr-comment-resolver` | `agents/workflow/pr-comment-resolver` | `pr-comment-resolver` | active | Resolves PR review comments with code changes |
| `repo-research-analyst` | `agents/research/repo-research-analyst` | `repo-research-analyst` | active | Research on repository structure and conventions |
| `schema-drift-detector` | `agents/review/schema-drift-detector` | `schema-drift-detector` | active | Detects unrelated schema.rb changes in PRs |
| `security-sentinel` | `agents/review/security-sentinel` | `security-sentinel` | active | Security audits for vulnerabilities and OWASP compliance |
| `spec-flow-analyzer` | `agents/workflow/spec-flow-analyzer` | `spec-flow-analyzer` | active | Analyzes specs for user flow completeness and gaps |

### New skills (not from upstream)

| Skill | Status | Description |
|---|---|---|
| `test-reviewer` | active | Creates test cases for prevention strategies and regression tests |

### Generated from original commands

These skills were auto-generated by the codex converter to back each command prompt.

| Installed Skill | Original Command | Status | Description |
|---|---|---|---|
| `deepen-plan` | `commands/deepen-plan.md` | active | Backs the deepen-plan command |
| `feature-video` | `commands/feature-video.md` | active | Backs the feature-video command |
| `resolve_todo_parallel` | `commands/resolve_todo_parallel.md` | active | Backs the resolve_todo_parallel command |
| `resolve_pr_parallel` | `commands/resolve_parallel.md` | active | Backs the resolve_parallel command |
| `test-browser` | `commands/test-browser.md` | active | Backs the test-browser command |
| `workflows-brainstorm` | `commands/workflows/brainstorm.md` | active | Backs the workflows-brainstorm command |
| `workflows-compound` | `commands/workflows/compound.md` | active | Backs the workflows-compound command |
| `workflows-plan` | `commands/workflows/plan.md` | active | Backs the workflows-plan command |
| `workflows-review` | `commands/workflows/review.md` | active | Backs the workflows-review command |
| `workflows-work` | `commands/workflows/work.md` | active | Backs the workflows-work command |

## Summary

| Type | Original Count | Active | Removed | Renamed | Location |
|---|---|---|---|---|---|
| Commands | 22 (17 + 5 workflows) | 9 | — | — | `commands/` |
| Skills (direct copy) | 20 | 16 | 3 | 1 | `skills/` |
| Skills (from agents) | 29 | 19 | 10 | — | `skills/` |
| Skills (from commands) | 10 | 10 | — | — | `skills/` |
| Skills (new) | 1 | 1 | — | — | `skills/` |
| MCP Servers | 1 (context7) | 1 | — | — | `config.toml` |
| **Total skills** | **60** | **46** | **13** | **1** | `skills/` |

## Change Log

| Date | Change | Details |
|---|---|---|
| 2026-02-18 | Initial import | v2.34.1 via codex install target |
| 2026-02-18 | Simplified workflow commands | `workflows-*` commands now delegate to matching skill |
| 2026-02-18 | Removed `every-style-editor-2` | Duplicate of `every-style-editor` (agent dedup artifact) |
| 2026-02-18 | Renamed `every-style-editor` → `style-editor` | Made agent-agnostic |
| 2026-02-18 | Removed `andrew-kane-gem-writer` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Removed `ankane-readme-writer` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Removed `dhh-rails-reviewer` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Removed `dhh-rails-style` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Removed `dspy-ruby` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Removed `kieran-python-reviewer` | Language-specific, not general purpose |
| 2026-02-18 | Removed `kieran-rails-reviewer` | Ruby/Rails-specific, not general purpose |
| 2026-02-18 | Cleaned references | Updated all skills referencing removed/renamed items |
| 2026-02-18 | Removed `kieran-typescript-reviewer` | Language-specific, not general purpose |
| 2026-02-18 | Removed `julik-frontend-races-reviewer` | Language-specific, not general purpose |
| 2026-02-18 | Removed `lint` | Ruby/ERB-specific, not general purpose |
| 2026-02-18 | Synced `agent-browser` | Replaced with upstream from vercel-labs/agent-browser |
| 2026-02-18 | Removed attribution lines | Removed Claude Code / Compound Engineered badges |
| 2026-02-18 | Agent-agnostic skill refs | Replaced `$skill-name` with backtick-wrapped `skill-name` |
| 2026-02-18 | Removed ULTRA-THINK prefixes | Cleaned agent-specific formatting |
| 2026-02-18 | Cleaned `/prompts:` refs | Replaced `/prompts:X` with `/X`, fixed broken URLs |
| 2026-02-18 | Created `test-reviewer` | New skill for test case creation and regression prevention |
