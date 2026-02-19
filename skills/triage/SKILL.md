---
name: triage
description: Triage and categorize findings for a todo tracking system. Use when processing code review findings, security audit results, performance analysis, or any categorized findings that need tracking.
argument-hint: "[findings list or source type]"
---

# Triage

Present findings, decisions, or issues one by one for triage. The goal is to go through each item and decide whether to add it to the todo tracking system.

**IMPORTANT: DO NOT CODE ANYTHING DURING TRIAGE!**

This skill is for:

- Triaging code review findings
- Processing security audit results
- Reviewing performance analysis
- Handling any categorized findings that need tracking

## Workflow

### Step 1: Read Existing Todos

Read all pending todos in the `todos/` directory to understand current state.

### Step 2: Present Each Finding

For each finding, present in this format:

```
---
Issue #X: [Brief Title]

Severity: P1 (CRITICAL) / P2 (IMPORTANT) / P3 (NICE-TO-HAVE)

Category: [Security/Performance/Architecture/Bug/Feature/etc.]

Description:
[Detailed explanation of the issue or improvement]

Location: [file_path:line_number]

Problem Scenario:
[Step by step what's wrong or could happen]

Proposed Solution:
[How to fix it]

Estimated Effort: [Small (< 2 hours) / Medium (2-8 hours) / Large (> 8 hours)]

---
Do you want to add this to the todo list?
1. yes - create todo file
2. next - skip this item
3. custom - modify before creating
```

### Step 3: Handle User Decision

**When user says "yes":**

1. **Update existing todo file** (if it exists) or **create new file:**

   If todo already exists (from code review):

   - Rename file from `{id}-pending-{priority}-{desc}.md` to `{id}-ready-{priority}-{desc}.md`
   - Update YAML frontmatter: `status: pending` to `status: ready`
   - Keep issue_id, priority, and description unchanged

   If creating new todo:

   ```
   {next_id}-ready-{priority}-{brief-description}.md
   ```

   Priority mapping:

   - P1 (CRITICAL) = `p1`
   - P2 (IMPORTANT) = `p2`
   - P3 (NICE-TO-HAVE) = `p3`

   Example: `042-ready-p1-transaction-boundaries.md`

2. **Set YAML frontmatter:**

   ```yaml
   ---
   status: ready
   priority: p1 # or p2, p3 based on severity
   issue_id: "042"
   tags: [category, relevant-tags]
   dependencies: []
   ---
   ```

3. **Populate or update the file:**

   ```markdown
   # [Issue Title]

   ## Problem Statement
   [Description from finding]

   ## Findings
   - [Key discoveries]
   - Location: [file_path:line_number]
   - [Scenario details]

   ## Proposed Solutions

   ### Option 1: [Primary solution]
   - **Pros**: [Benefits]
   - **Cons**: [Drawbacks if any]
   - **Effort**: [Small/Medium/Large]
   - **Risk**: [Low/Medium/High]

   ## Recommended Action
   [Filled during triage - specific action plan]

   ## Technical Details
   - **Affected Files**: [List files]
   - **Related Components**: [Components affected]
   - **Database Changes**: [Yes/No - describe if yes]

   ## Acceptance Criteria
   - [ ] [Specific success criteria]
   - [ ] Tests pass
   - [ ] Code reviewed

   ## Work Log

   ### {date} - Approved for Work
   **Actions:**
   - Issue approved during triage session
   - Status changed from pending to ready

   **Learnings:**
   - [Context and insights]

   ## Notes
   Source: Triage session on {date}
   ```

4. **Confirm approval:** "Approved: `{new_filename}` (Issue #{issue_id}) - Status: **ready**"

**When user says "next":**

- **Delete the todo file** from `todos/` directory since it's not relevant
- Skip to the next item
- Track skipped items for summary

**When user says "custom":**

- Ask what to modify (priority, description, details)
- Update the information
- Present revised version
- Ask again: yes/next/custom

### Step 4: Continue Until All Processed

- Process all items one by one
- Track progress with a counter
- Don't wait for approval between items - keep moving

### Step 5: Final Summary

After all items processed:

```markdown
## Triage Complete

**Total Items:** [X] **Approved (ready):** [Y] **Skipped:** [Z]

### Approved Todos (Ready for Work):

- `042-ready-p1-transaction-boundaries.md` - Transaction boundary issue
- `043-ready-p2-cache-optimization.md` - Cache performance improvement

### Skipped Items (Deleted):

- Item #5: [reason] - Removed from todos/
- Item #12: [reason] - Removed from todos/

### Next Steps:

1. View approved todos:
   ```bash
   ls todos/*-ready-*.md
   ```
2. Start work on approved items using `resolve_todo_parallel`
3. Or pick individual items to work on
```

Present options when done:

```markdown
What would you like to do next?

1. Run resolve_todo_parallel to resolve the todos
2. Commit the todos
3. Nothing
```

## Progress Tracking

Every time you present a finding, include:
- **Progress:** X/Y completed (e.g., "3/10 completed")
- **Estimated time remaining:** Based on pacing so far

## Rules

- Present findings
- Make yes/next/custom decisions
- Update todo files (rename, frontmatter, work log)
- Do NOT implement fixes or write code
- Do NOT add detailed implementation details
- That's for the resolve phase
