# pmcro-marketplace-skills

PMCR-O skills packaged **exactly like** [dotnet/skills](https://github.com/dotnet/skills): one repo, many plugins, skills under each plugin, baseline-vs-skilled experiments.

## Plugin map

| Plugin | Analog | Owns |
|--------|--------|------|
| **pmcro** | `plugins/dotnet` | Core cycle skills: `plan`, `make`, `check`, `reflect` |
| **pmcro-orchestrator** | `plugins/dotnet11` | High-level goals: `orchestrate`, `decompose-goal` |

```text
plugins/
  pmcro/                      # core machinery
    skills/plan|make|check|reflect/
  pmcro-orchestrator/         # high-level goal specialist
    skills/orchestrate/
    skills/decompose-goal/
```

## Important distinction

- **Orchestrate** takes a `high_level_goal` and manages cycles.
- **Decompose-goal** is a **skill** that orchestrate *calls* for cycle 0 — not a private side power.
- Core **pmcro** skills never own the high-level goal; they run one admitted cycle goal / constraint.

MAF-native host / GHA local-model runtime is a **run surface**, not required inside these plugin folders.

## Docs

- [Plugin layout](docs/PLUGIN-LAYOUT.md)
- [Phases → tasks → steps](docs/PHASES-TASKS-STEPS.md)

## Status

- [x] Layout aligned to dotnet/skills
- [x] pmcro core phase skills (stubs)
- [x] pmcro-orchestrator: orchestrate + decompose-goal
- [x] experiment + eval skeletons
- [ ] Domain example plugin (e.g. create-dotnet-maui-app)
- [ ] GHA + MAF host job
