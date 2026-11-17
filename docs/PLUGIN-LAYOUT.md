# Plugin layout (dotnet/skills mapping)

We adopt the **entire** [dotnet/skills](https://github.com/dotnet/skills) plugin philosophy and folder shape.

## Mapping

| dotnet/skills | PMCR-O marketplace skills |
|---------------|---------------------------|
| `plugins/dotnet/` | `plugins/pmcro/` |
| `plugins/dotnet11/` | `plugins/pmcro-orchestrator/` |
| `plugins/dotnet-maui/`, `dotnet-data/`, … | future domain plugins (`pmcro-maui`, …) |
| `eng/`, `tests/`, `*.experiment.yaml` | same roles |
| Skill Value dashboard | dynamic marketplace pages from same manifests |

## Roles

### `plugins/pmcro/` — core lifecycle (like `dotnet`)

Bare phase skills only:

- `plan`
- `make`
- `check`
- `reflect`

These are the machinery of a cycle. They do **not** own high-level goals.

### `plugins/pmcro-orchestrator/` — high-level goal specialist (like `dotnet11`)

Skills that **manage high-level goals**:

- `orchestrate` — admit goal, mint/link trail, authorize cycles
- `decompose-goal` — cycle-0 skill: turn `high_level_goal` into Checker-verified discrete constraints

The Orchestrator **takes a high-level goal** and invokes skills (including decompose). Decomposition is itself a skill, not a hidden side power.

## What this is not

- Not MAF-native runtime code inside these plugins (yet). Skills are portable instruction packs.
- MAF / GHA / local-model host is a **run surface** that loads these skills — separate from plugin packaging.

## Phase → task → step still holds

See [PHASES-TASKS-STEPS.md](PHASES-TASKS-STEPS.md). Plugins group skills; phases are still orchestrate | plan | make | check | reflect.
