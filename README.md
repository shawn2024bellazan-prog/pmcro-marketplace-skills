# pmcro-marketplace-skills

PMCR-O marketplace skills with an explicit **phase → task → step** hierarchy.

## Hierarchy (do not confuse)

| Layer | Role |
|-------|------|
| **Phase** | `orchestrate` · `plan` · `make` · `check` · `reflect` |
| **Task** | Named unit of work inside a phase |
| **Step** | Atomic ordered action inside a task |

See [docs/PHASES-TASKS-STEPS.md](docs/PHASES-TASKS-STEPS.md).

## Cycle 0

Decomposition is a full cycle, not a side power:

```text
Orchestrator(high_level_goal)
  → orchestrate "decompose into discrete constraints"
  → plan → make → check → reflect
  → Checker-verified constraint list
  → later cycles route within that list only
```

## Layout (dotnet/skills-compatible)

```text
plugins/pmcro/
  plugin.json
  skills/
    orchestrate/
      SKILL.md
      references/
tests/orchestrate/eval.yaml
pmcro.experiment.yaml
.claude-plugin/marketplace.json
```

## Skill value

`pmcro.experiment.yaml` follows the dotnet/skills pattern: every listed eval runs **baseline** (no skill) and **skilled** (one skill). Marketplace pages should show activation, not-passed, tokens, and time per executor × judge — generated from the same manifests installers read.

## Status

- [x] Hierarchy doc
- [x] `orchestrate` skill (cycle 0 + routing)
- [x] Experiment skeleton
- [ ] plan / make / check / reflect skills
- [ ] Example domain skill (`create-dotnet-maui-app`) with scripts for local models
- [ ] GHA + MAF host job

Created for alignment with [pmcro-marketplace/Everything-as-Agent](https://github.com/pmcro-marketplace/Everything-as-Agent) and [pmcr-o/pmcro-agent](https://github.com/pmcr-o/pmcro-agent).
