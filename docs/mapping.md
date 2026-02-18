# Compound Engineering Plugin Mapping

Source: `compound-engineering` plugin v2.34.1 from [EveryInc/compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin)
Converted via: `compound-plugin install --to codex` (commands=prompts)

## Commands (prompts/)

Original Claude commands converted to codex prompts, installed as `commands/*.md`.

| Installed Command | Original Source | Description |
|---|---|---|
| `deepen-plan.md` | `commands/deepen-plan.md` | Enhance a plan with parallel research agents |
| `feature-video.md` | `commands/feature-video.md` | Record a video walkthrough of a feature |
| `resolve_todo_parallel.md` | `commands/resolve_todo_parallel.md` | Resolve all pending CLI todos using parallel processing |
| `test-browser.md` | `commands/test-browser.md` | Run browser tests on pages affected by current PR or branch |
| `workflows-brainstorm.md` | `commands/workflows/brainstorm.md` | Explore requirements and approaches through collaborative dialogue |
| `workflows-compound.md` | `commands/workflows/compound.md` | Document a recently solved problem to compound team knowledge |
| `workflows-plan.md` | `commands/workflows/plan.md` | Transform feature descriptions into well-structured project plans |
| `workflows-review.md` | `commands/workflows/review.md` | Perform exhaustive code reviews using multi-agent analysis |
| `workflows-work.md` | `commands/workflows/work.md` | Execute work plans efficiently while maintaining quality |

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

| Installed Skill | Original Source | Description |
|---|---|---|
| `agent-browser` | `skills/agent-browser` | Browser automation CLI for AI agents |
| `agent-native-architecture` | `skills/agent-native-architecture` | Build applications where agents are first-class citizens |
| `andrew-kane-gem-writer` | `skills/andrew-kane-gem-writer` | Write Ruby gems following Andrew Kane's style |
| `brainstorming` | `skills/brainstorming` | Explore user intent, approaches, and design decisions before planning |
| `compound-docs` | `skills/compound-docs` | Compound engineering documentation |
| `compound-foundations` | `skills/compound-foundations` | Compound engineering foundations |
| `create-agent-skills` | `skills/create-agent-skills` | Expert guidance for creating Claude Code skills |
| `dhh-rails-style` | `skills/dhh-rails-style` | DHH-style Rails development patterns |
| `document-review` | `skills/document-review` | Refine brainstorm or plan documents before next workflow step |
| `dspy-ruby` | `skills/dspy-ruby` | DSPy Ruby integration |
| `every-style-editor` | `skills/every-style-editor` | Edit text to conform to Every's editorial style guide |
| `file-todos` | `skills/file-todos` | File-based TODO management |
| `frontend-design` | `skills/frontend-design` | Create distinctive, production-grade frontend interfaces |
| `gemini-imagegen` | `skills/gemini-imagegen` | Generate and edit images using Gemini API |
| `git-worktree` | `skills/git-worktree` | Manage Git worktrees for isolated parallel development |
| `orchestrating-swarms` | `skills/orchestrating-swarms` | Orchestrate parallel agent swarms |
| `rclone` | `skills/rclone` | Upload, sync, and manage files across cloud storage |
| `resolve-pr-parallel` | `skills/resolve-pr-parallel` | Resolve PR comments in parallel |
| `setup` | `skills/setup` | Plugin setup and configuration |
| `skill-creator` | `skills/skill-creator` | Create and manage skills |

### Generated from original agents

| Installed Skill | Original Agent | Category | Description |
|---|---|---|---|
| `agent-native-reviewer` | `agents/review/agent-native-reviewer` | review | Reviews code for agent-native parity |
| `ankane-readme-writer` | `agents/docs/ankane-readme-writer` | docs | Creates READMEs following Ankane-style template |
| `architecture-strategist` | `agents/review/architecture-strategist` | review | Analyzes code changes for pattern compliance and design integrity |
| `best-practices-researcher` | `agents/research/best-practices-researcher` | research | Researches external best practices and documentation |
| `bug-reproduction-validator` | `agents/workflow/bug-reproduction-validator` | workflow | Reproduces and validates bug reports |
| `code-simplicity-reviewer` | `agents/review/code-simplicity-reviewer` | review | Final review pass for YAGNI violations and simplification |
| `data-integrity-guardian` | `agents/review/data-integrity-guardian` | review | Reviews database migrations and data models for safety |
| `data-migration-expert` | `agents/review/data-migration-expert` | review | Validates data migrations and production data transformations |
| `deployment-verification-agent` | `agents/review/deployment-verification-agent` | review | Produces Go/No-Go deployment checklists |
| `design-implementation-reviewer` | `agents/design/design-implementation-reviewer` | design | Compares live UI against Figma designs |
| `design-iterator` | `agents/design/design-iterator` | design | Iteratively refines UI design through screenshot-analyze-improve cycles |
| `dhh-rails-reviewer` | `agents/review/dhh-rails-reviewer` | review | Brutally honest Rails code review from DHH's perspective |
| `every-style-editor-2` | `agents/workflow/every-style-editor` | workflow | Reviews text for Every's editorial style compliance (deduplicated name) |
| `figma-design-sync` | `agents/design/figma-design-sync` | design | Detects and fixes visual differences between web and Figma |
| `framework-docs-researcher` | `agents/research/framework-docs-researcher` | research | Gathers documentation and best practices for frameworks |
| `git-history-analyzer` | `agents/research/git-history-analyzer` | research | Archaeological analysis of git history |
| `julik-frontend-races-reviewer` | `agents/review/julik-frontend-races-reviewer` | review | Reviews JS/Stimulus code for race conditions |
| `kieran-python-reviewer` | `agents/review/kieran-python-reviewer` | review | Reviews Python code for Pythonic patterns and type safety |
| `kieran-rails-reviewer` | `agents/review/kieran-rails-reviewer` | review | Reviews Rails code for conventions and maintainability |
| `kieran-typescript-reviewer` | `agents/review/kieran-typescript-reviewer` | review | Reviews TypeScript code for type safety and modern patterns |
| `learnings-researcher` | `agents/research/learnings-researcher` | research | Searches past solutions to surface institutional knowledge |
| `lint` | `agents/workflow/lint` | workflow | Linting and code quality checks on Ruby and ERB files |
| `pattern-recognition-specialist` | `agents/review/pattern-recognition-specialist` | review | Analyzes code for design patterns and anti-patterns |
| `performance-oracle` | `agents/review/performance-oracle` | review | Analyzes code for performance bottlenecks |
| `pr-comment-resolver` | `agents/workflow/pr-comment-resolver` | workflow | Resolves PR review comments with code changes |
| `repo-research-analyst` | `agents/research/repo-research-analyst` | research | Research on repository structure and conventions |
| `schema-drift-detector` | `agents/review/schema-drift-detector` | review | Detects unrelated schema.rb changes in PRs |
| `security-sentinel` | `agents/review/security-sentinel` | review | Security audits for vulnerabilities and OWASP compliance |
| `spec-flow-analyzer` | `agents/workflow/spec-flow-analyzer` | workflow | Analyzes specs for user flow completeness and gaps |

### Generated from original commands

These skills were auto-generated by the codex converter to back each command prompt.

| Installed Skill | Original Command | Description |
|---|---|---|
| `deepen-plan` | `commands/deepen-plan.md` | Backs the deepen-plan command |
| `feature-video` | `commands/feature-video.md` | Backs the feature-video command |
| `resolve_todo_parallel` | `commands/resolve_todo_parallel.md` | Backs the resolve_todo_parallel command |
| `resolve_pr_parallel` | `commands/resolve_parallel.md` | Backs the resolve_parallel command |
| `test-browser` | `commands/test-browser.md` | Backs the test-browser command |
| `workflows-brainstorm` | `commands/workflows/brainstorm.md` | Backs the workflows-brainstorm command |
| `workflows-compound` | `commands/workflows/compound.md` | Backs the workflows-compound command |
| `workflows-plan` | `commands/workflows/plan.md` | Backs the workflows-plan command |
| `workflows-review` | `commands/workflows/review.md` | Backs the workflows-review command |
| `workflows-work` | `commands/workflows/work.md` | Backs the workflows-work command |

## Summary

| Type | Original Count | Installed Count | Location |
|---|---|---|---|
| Commands (prompts) | 22 (17 top-level + 5 workflows) | 9 | `commands/` |
| Skills (direct copy) | 20 | 20 | `skills/` |
| Skills (from agents) | 26 (across 5 categories) | 29 | `skills/` |
| Skills (from commands) | — | 10 | `skills/` |
| MCP Servers | 1 (context7) | 1 | `config.toml` |
| **Total skills** | **20** | **57** | `skills/` |
