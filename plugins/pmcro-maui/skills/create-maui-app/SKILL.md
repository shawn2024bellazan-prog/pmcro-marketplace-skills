---
name: create-maui-app
description: >-
  Scaffold a .NET MAUI application from a verified constraint (project name,
  target framework). Prefer scripts for weak/local models. Does not own
  high_level_goal decomposition — that is pmcro-orchestrator.
license: MIT
compatibility: agentskills.io, MAF, PMCR-O
metadata:
  plugin: pmcro-maui
---

# Create MAUI app

## When to use

- Make phase is executing a constraint such as "Scaffold MAUI project X".

## Progressive disclosure

- Strong models: this skill may be enough to drive `dotnet new maui`.
- Weak/local models: run `scripts/new-maui.sh` (or `.ps1`) inside the authorized workspace.

## Never

- Admit or decompose high_level_goals
- Issue PASS/LOOP/HALT (Check does that)
