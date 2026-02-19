---
name: lfg
description: Full autonomous engineering workflow — plan, build, review, and ship
---

## Arguments
[feature description, bug report, or improvement idea]

# LFG - Full Autonomous Engineering Workflow

## Introduction

LFG is the end-to-end autonomous workflow. It chains every step from planning through shipping into a single uninterrupted run. Hand it a feature description and walk away.

## Feature Input

<feature> #$ARGUMENTS </feature>

**If the feature description above is empty:**
Ask the user: "What are we building? Provide a feature description, bug report, or improvement idea."

## Pipeline

Run these skills in order. Do not stop between steps — complete every step through to the end.

### Step 1: Persistence Loop (Optional)
If the `ralph-wiggum` skill is available, run `ralph-wiggum:ralph-loop "finish all slash commands" --completion-promise "DONE"`. If not available or it fails, skip and continue to Step 2 immediately.

### Step 2: Plan
Run `workflows-plan` with the feature description.

### Step 3: Deepen Plan
Run `deepen-plan` on the plan file produced in Step 2.

### Step 4: Execute Work
Run `workflows-work` on the deepened plan file.

### Step 5: Code Review
Run `workflows-review` on the changes produced in Step 4.

### Step 6: Resolve TODOs
Run `resolve_todo_parallel` to clean up any remaining TODO comments.

### Step 7: Browser Tests
Run `test-browser` on pages affected by the changes.

### Step 8: Feature Video
Run `feature-video` to record a walkthrough of the completed feature.

## Failure Handling

If any step fails:
1. Log the error clearly
2. Attempt to fix the issue and retry the failed step once
3. If it fails again, stop and report to the user with context on what succeeded and what failed
