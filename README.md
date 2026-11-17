# pmcro-marketplace-skills

Full plugin folders following [dotnet/skills](https://github.com/dotnet/skills) layout.

```text
plugins/
  pmcro/                         # like plugins/dotnet
    plugin.json
    version.json
    README.md
    .claude-plugin/plugin.json
    .codex-plugin/plugin.json
    skills/
      plan/SKILL.md
      make/SKILL.md
      check/SKILL.md
      reflect/SKILL.md
  pmcro-orchestrator/            # like plugins/dotnet11
    plugin.json
    version.json
    README.md
    .claude-plugin/plugin.json
    .codex-plugin/plugin.json
    skills/
      orchestrate/
        SKILL.md
        references/
      decompose-goal/
        SKILL.md
        references/
docs/
tests/
pmcro.experiment.yaml
.claude-plugin/marketplace.json
.codex-plugin/marketplace.json
```

| Plugin | Analog | Owns |
|--------|--------|------|
| **pmcro** | `dotnet` | plan · make · check · reflect |
| **pmcro-orchestrator** | `dotnet11` | high_level_goal via orchestrate + decompose-goal skill |

Repo: https://github.com/shawn2024bellazan-prog/pmcro-marketplace-skills
