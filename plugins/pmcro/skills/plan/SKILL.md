---
name: plan
description: >-
  Turn an admitted cycle goal (or one discrete constraint) into a minimal PlanFrame:
  ordered tasks with subject agents, success criteria, and out_of_scope. Appends to
  plan trail only. Never executes steps and never issues PASS/LOOP/HALT.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  phase: plan
  plugin: pmcro
---

# Plan

## When I am used

- Orchestrator has admitted a cycle and handed off a goal or single constraint.
- I need a Checker-testable plan before Make runs.

## What I own

- PlanFrame: goal, ordered **tasks**, per-task success criteria, out_of_scope
- Trail append under `plan/` only

## What I never do

- Execute tasks or steps (Make)
- Issue verdicts (Check)
- Decompose high_level_goals (that is `decompose-goal` in pmcro-orchestrator)
- Invent unregistered capabilities

## Process

1. Load laws, trail, validated resources only.
2. Name the minimum tasks required for this cycle goal.
3. For each task, list steps only if the executor needs them (progressive disclosure).
4. Write PlanFrame; stop.

## Output

- PlanFrame on trail
- Every success criterion independently checkable
