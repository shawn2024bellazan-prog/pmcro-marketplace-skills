---
name: make
description: >-
  Execute the approved PlanFrame completely: run each task and its steps, write
  evidence to the make trail, invoke registered capabilities only. Never issues
  PASS/LOOP/HALT and never silently stubs work.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  phase: make
  plugin: pmcro
---

# Make

## When I am used

- A PlanFrame exists for the current cycle and Make is authorized.

## What I own

- Execution of planned tasks and steps
- Capability invocation (optional provider agent)
- Make-trail evidence

## What I never do

- Change the plan silently
- Claim success without evidence
- Issue the cycle verdict (Check only)

## Progressive disclosure

- Strong models: follow PlanFrame + this skill.
- Weak/local models: load task scripts under capability/skill `scripts/` and references as directed by the plan.
