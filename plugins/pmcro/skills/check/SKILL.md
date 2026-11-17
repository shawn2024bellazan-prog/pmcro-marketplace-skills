---
name: check
description: >-
  Independently score the cycle against PlanFrame success criteria and laws.
  Emit PASS, LOOP, or HALT with evidence. Never repairs artifacts and never
  re-executes Make work.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  phase: check
  plugin: pmcro
---

# Check

## What I own

- Independent verdict: PASS | LOOP | HALT
- Evidence tied to acceptance criteria

## What I never do

- Repair or re-make artifacts
- Accept rehearsal/simulated PASS as verified execution
