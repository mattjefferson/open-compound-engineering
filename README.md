# Open Compound

A cleaned up, agent-agnostic, simpler version of [compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin).

## Why

I really emjoy using the Compound Engineering system.  Since I wanted to use it with my team and others, I wanted to simplify it down to the core workflows, so that it wouldn't interfere with some of the teams code specific skills, workflows, etc.

## Goals

- **Artifact compatible** — Produce the same output artifacts (plans, solutions, todos, brainstorms) as the original, so teams can mix and match
- **Trim out extras** — Clean out extra skills, etc. that are not needed by the core workflow.
- **Agent Agnostic** - More focus on artifacts that apply across agents, rather than a Claude Code specific.  For example, use AGENTS.md instead of CLAUDE.md.


## Structure

```
commands/    # Prompts and workflows (invoke by name)
skills/      # Reusable skill definitions (SKILL.md per skill)
docs/        # Mapping and documentation
scripts/     # Utilities
```

## License

[MIT](LICENSE) — Same as the original project.
