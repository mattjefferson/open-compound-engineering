# AGENTS.md

## What Is This

Open Compound is a simplified, agent-agnostic version of the original Compound Engineering plugin.
This repo preserves core workflow artifacts (brainstorms, plans, work outputs, reviews, and compounded solutions)
while removing unnecessary, tool-specific complexity.

## Directory Structure

- `commands/`: workflow prompts and command entrypoints
- `skills/`: reusable skills (`SKILL.md` per skill)
- `docs/`: mapping and reference documentation
- `scripts/`: install and support scripts

## Key Concepts

- Artifact compatibility with the upstream Compound workflow model
- Agent-agnostic design (portable instructions and conventions)
- Simplicity-first implementation and minimal-scope changes

## Core Docs

- Project overview: `README.md`
- Source mapping and provenance: `docs/mapping.md`

## Commands

- Install for Claude: `./scripts/install.sh --target claude`
- Install for Codex: `./scripts/install.sh --target codex`
- Install for Gemini: `./scripts/install.sh --target gemini`

## Code Editing Discipline

- Avoid bulk codemods and giant regex/sed rewrites
- Split large mechanical changes into explicit smaller edits
- For subtle/complex logic, edit file-by-file with intent

## Git Rules

- Read-only by default: `status`, `diff`, `log`
- Push only when asked
- Destructive operations require explicit consent:
  - `reset --hard`, `clean`, `restore`, branch deletion
- Use conventional commits: `feat|fix|refactor|build|ci|chore|docs|style|perf|test`
- Follow semantic versioning

## Review Expectations

- Keep changes tightly scoped to the request
- Follow existing naming and architecture patterns
- Prefer concrete, actionable findings over abstract commentary
- Include path-level references when explaining changes

## Tone

- Be direct and factual
- Optimize for clarity and execution momentum
