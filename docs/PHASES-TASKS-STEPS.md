# Phases, Tasks, and Steps

This is the single hierarchy used everywhere in PMCR-O marketplace skills.
Do not invent parallel vocabularies.

## Hierarchy

```text
high_level_goal
  └── Phase          (lifecycle unit: orchestrate | plan | make | check | reflect)
        └── Task     (named unit of work inside a phase; one trail frame family)
              └── Step  (atomic action inside a task; ordered, checkable)
```

| Layer | Meaning | Who owns it | Artifact |
|-------|---------|-------------|----------|
| **Phase** | One of the five lifecycle stages | Orchestrator admits the cycle; phase skill executes | phase folder under trail |
| **Task** | A bounded unit of work *inside* a phase | Planner names it; Maker runs it | task id in plan + make frames |
| **Step** | Smallest ordered action inside a task | Maker executes; Checker can score | step evidence in make/check |

## Rules

1. **Decomposition is a cycle, not a side power.**  
   Cycle 0 goal is only: *decompose high_level_goal into discrete constraints*.  
   Same O→P→M→C→R machinery. The constraint list is a Checker-verified artifact.

2. **Downstream cycles receive pre-decomposed constraints.**  
   Orchestrate routes *within* the list. It does not merge or re-derive constraints.

3. **Phase ≠ Task ≠ Step.**  
   - Saying “make phase” means the whole Make stage.  
   - A *task* might be “scaffold MAUI project”.  
   - *Steps* inside it might be: validate name → `dotnet new` → restore → build.

4. **Trail mirrors the hierarchy.**  
   ```text
   trails/<trail-id>/
     orchestrate/
     plan/
     make/
     check/
     reflect/
   ```
   Frames inside each phase reference task ids and step evidence.

5. **Capability vs skill.**  
   A skill teaches (progressive disclosure).  
   A capability is registered + authorized work.  
   Capability may declare `provider: agent`.  
   Only Checker issues PASS / LOOP / HALT.

## Mapping to MAF / local models

- Strong models: often `SKILL.md` alone.
- Weak / local models: load `references/` and run `scripts/` (same phase/task/step flow).
- GitHub Actions + MAF host runs the same skills in a container; evidence still lands in the trail.
