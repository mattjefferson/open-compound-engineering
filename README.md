# Open Compound

A cleaned up, agent-agnostic, simpler version of [compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin).

## Why

I really enjoy using the Compound Engineering system. Since I wanted to use it with my team and others, I wanted to simplify it down to the core workflows, so that it wouldn't interfere with some of the teams code specific skills, workflows, etc.

## Goals

- **Artifact compatible** — Produce the same output artifacts (plans, solutions, todos, brainstorms) as the original, so teams can mix and match
- **Trim out extras** — Clean out extra skills, etc. that are not needed by the core workflow
- **Agent agnostic** — Focus on artifacts that apply across agents, rather than being Claude Code specific. `AGENTS.md` is the source of truth; `CLAUDE.md` is a compatibility pointer.

## Install

```bash
# Claude Code — skills to ~/.claude/skills/, commands skipped when a matching skill exists
./scripts/install.sh --target claude

# Codex — commands to ~/.codex/prompts/, skills to ~/.agents/skills/
./scripts/install.sh --target codex

# Gemini — skills only to ~/.gemini/skills/
./scripts/install.sh --target gemini
```

## What's Included

**9 commands** and **46 skills** covering:

- **Workflows** — brainstorm, plan, work, review, compound (document learnings)
- **Research** — best practices, framework docs, repo analysis, git history, learnings
- **Review** — architecture, code simplicity, data integrity, performance, security, patterns, agent-native
- **Design** — frontend design, design iteration, implementation review
- **Tooling** — browser automation, git worktree, file todos, triage, deployment verification
- **Content** — image generation, feature video walkthroughs

See [`docs/mapping.md`](docs/mapping.md) for full provenance of every command and skill.

## Notes

- `workflows-work` includes a "Swarm Mode" section that is Claude Code specific; Codex can approximate it via parallel subagents but does not implement the Teammate/Task runtime.

## Structure

```
commands/    # Prompts and workflows (invoke by name)
skills/      # Reusable skill definitions (SKILL.md per skill)
docs/        # Mapping and documentation
scripts/     # Install script and utilities
```

## License

[MIT](LICENSE) — Same as the original project.
