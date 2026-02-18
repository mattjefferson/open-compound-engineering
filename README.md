# Open Compound

A cleaned up, agent-agnostic, simpler version of [compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin).

## Why

The original compound-engineering plugin is powerful but tightly coupled to Claude Code's plugin system. This project extracts the valuable commands, skills, and agent patterns into a straightforward directory structure that works across coding agents and tools.

## Goals

- **Agent agnostic** — Commands and skills as plain markdown, usable by any AI coding assistant
- **Simpler** — Flat directory structure, no build step, no plugin manifest
- **Curated** — Remove redundancy, consolidate overlapping skills, keep what's useful
- **Maintained** — Track changes from upstream while evolving independently

## Structure

```
commands/    # Prompts and workflows (invoke by name)
skills/      # Reusable skill definitions (SKILL.md per skill)
docs/        # Mapping and documentation
scripts/     # Utilities
```

## License

[MIT](LICENSE) — Same as the original project.
