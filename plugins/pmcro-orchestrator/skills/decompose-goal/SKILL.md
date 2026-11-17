---
name: decompose-goal
description: >-
  Cycle-0 skill: turn one high_level_goal into a discrete, non-overlapping where
  required, list of constraints with acceptance criteria. Produces a plan-ready
  artifact that must pass Check. Does not execute domain work.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  phase: orchestrate
  plugin: pmcro-orchestrator
  cycle: 0
---

# Decompose goal

This skill **is** the decomposition. Orchestrate invokes me; I do not hide inside Orchestrate.

## Input

- `high_level_goal`
- Active laws / constraints inheritance

## Output

```yaml
constraints:
  - id: c1
    statement: "..."      # one testable demand
    acceptance: "..."     # what Check will score
    out_of_scope: []
```

## Rules

1. Discrete constraints only — no vague mega-constraints when laws require split.
2. Each constraint must be routable as its own later cycle.
3. No domain execution here (no `dotnet new`, no file writes beyond trail/plan artifacts).
4. Checker must PASS this list before orchestrate routes any constraint downstream.

## Progressive disclosure

- Strong models: this file may be enough.
- Weak/local models: load `references/decomposition-patterns.md` when present.
