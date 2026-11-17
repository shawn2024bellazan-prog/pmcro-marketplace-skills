---
name: orchestrate
description: >-
  Manage high_level_goals: admit or deny, mint or link a trail, authorize cycles,
  and hand off either to decompose-goal (cycle 0) or to pmcro plan for one
  already-verified constraint. Sole cycle initiator. Never executes domain work
  and never issues PASS/LOOP/HALT.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  phase: orchestrate
  plugin: pmcro-orchestrator
---

# Orchestrate (high-level goal manager)

I live in **pmcro-orchestrator**, not in core `pmcro`.
I take a **high_level_goal**. I do not do domain work.

## When I am used

- A high_level_goal must enter the system
- Cycle 0 decomposition is required
- A Reflector proposal needs authorization for a next cycle

## What I own

- Admission / denial of high_level_goal
- Trail mint-or-link
- Invoking skill **decompose-goal** for cycle 0
- Routing one verified constraint at a time into `pmcro` plan
- Authorizing the next cycle (runner must not auto-consume seeds)

## What I never do

- Merge or rewrite constraints after they are Checker-verified
- Run plan/make/check/reflect myself (I hand off to core `pmcro` skills)
- Issue PASS/LOOP/HALT

## Flow

```text
high_level_goal
    → orchestrate (admit + trail)
        → if no verified constraints:
              invoke skill decompose-goal   # still a full cycle via pmcro skills
        → else:
              route one constraint → pmcro plan → make → check → reflect
```

Decomposition is **calling a skill**, not a private Orchestrator power.
