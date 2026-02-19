---
name: learn-anything
description: Generate structured learning curriculum for any topic using a 4-agent AI pipeline. Triggers: "learn anything", "learn-anything", "커리큘럼만들어", "학습커리큘럼", "호랑이 런애니띵", "런애니씽", "런애니띵"
---

# Learn-Anything — AI Curriculum Generator

> Any topic → Settings → Curriculum → Week 1 → Feedback → Continue

---

## Workflow

```
[Step 0] Settings (topic / level / weeks / model / output folder)
    ↓
[Step 1: Planner] Design curriculum → User approval
    ↓
[Step 2-4: Week 1 only] Researcher → Writer → Editor → Save
    ↓
[Step 5: Feedback] Update SKILL.md if changes requested
    ↓
[Step 6: Branch]
  [A] Restart  — regenerate from week 1 with new format
  [B] Continue — generate week 2+ one by one
  [C] Pause    — resume later
```

---

## Step 0: Initial Settings

Ask for missing items in order. Skip if already provided as arguments.

**Topic**: "What topic would you like to study?"

**Level**:
```
  [1] Beginner     — concepts only, no formulas
  [2] Intermediate — principles + hands-on  ← recommended
  [3] Advanced     — papers, deep technical analysis
```

**Duration**:
```
  [1] 4 weeks  — compact essentials
  [2] 8 weeks  — balanced  ← recommended
  [3] 12 weeks — comprehensive
```

**Model**:
```
  [1] claude-sonnet-4-6  — fast, cost-efficient  ← recommended
  [2] claude-opus-4-6    — highest quality, slower
```

**Output folder**: Default `{cwd}/learn-output/`

**Confirm display**:
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⚙️  Settings Confirmed
  Topic   : {topic}
  Level   : {level}
  Duration: {N} weeks
  Model   : {model}
  Output  : {output_folder}/{slug}_{level}_{N}w_{date}/
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Proceed? [Y/N]
```

---

## Step 1: Planner

Design a progressive curriculum (easy → hard, concept → practice).
Last 1-2 weeks must be integration project + review.

**Level rules**:
- Beginner: no formulas, analogies & real-life examples only
- Intermediate: principles, simple formulas, hands-on code included
- Advanced: academic papers, official docs, mathematical proofs

**Display format**:
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 Curriculum Draft — {topic} ({level}, {N} weeks)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Overview: {2-3 sentences on what you'll achieve}

 Week 1: {title}
         {subtitle — the key question this week}
         ▸ Concepts: {c1}, {c2}, {c3}...
         ▸ Practice: {goal}
         ▸ Deliverable: {item}
...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Happy with this curriculum?
  [Y] Approve — start generating week 1
  [R] Regenerate (max 3 times)
  [Q] Quit
```

---

## Step 2-4: Week 1 Generation Only

Generate ONLY week 1 after curriculum approval.

### Researcher — collect per week:
- 4-6 key concepts (5+ sentence definition + 2 examples + analogy each)
- 4-6 external resources (URL or "Search: {query}" if uncertain)
- 3-5 key data points (label + value + source)
- 1 hands-on exercise (title + goal + steps + completion criteria)
- 5 quiz questions: 2 T/F + 2 short answer + 1 essay

### Writer — required sections (in order):
1. 🗺️ **Week Preview** — what you'll be able to do after this week
2. 🧩 **Key Concepts** — with definition, examples, analogy
3. 📊 **Key Data** — table format
4. 🔗 **Recommended Resources** — table with type, title, time, description
5. 🛠️ **Hands-on Exercise** — goal, steps, completion criteria
6. ✅ **Weekly Checklist** — actionable checkboxes
7. ❓ **Weekly Quiz** — 5 questions with collapsible answers
8. 🚀 **Next Week Preview** — connection to next week

**Word count**: minimum 1,500 words

**Concept explanation standard**:
- Definition: minimum 5 sentences (background → core → practical meaning)
- Examples: minimum 2 (good example + bad example OR 2 concrete cases)
- Analogy: required for EVERY concept

### Editor — verify:
1. All 8 sections present
2. Word count ≥ 1,500
3. Level consistency throughout
4. Quiz: exactly 2 T/F + 2 short + 1 essay
5. All URLs valid or replaced with search queries

Fix any issues directly, then output final version.

---

## Step 5: Feedback Collection

After saving week 1 file:
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Week 1 complete!
📁 Saved: {file_path}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

How does this format look?
Tell me what to change, or say "good"/"ok" to continue.
```

**If feedback received**:
1. Update relevant section in SKILL.md
2. Regenerate week 1 with new rules (overwrite file)
3. Ask again (max 3 rounds)

**If no feedback** ("good", "ok", "fine"):
→ Proceed directly to Step 6

---

## Step 6: Next Action

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 What would you like to do next?
  [A] Restart  — regenerate all weeks with updated format
  [B] Continue — generate week 2 onwards (one at a time)
  [C] Pause    — I'll continue later
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### [B] Continue (week by week)
After each week generated:
```
[{N}/{total}] Week {N} done.
  [Y] Next week  [P] Pause  [Q] Quit
```

### [C] Pause
```
⏸️  Paused. Files saved at: {output_folder}
To resume: "learn-anything continue" + folder path
```

---

## Output File Structure

```
{output_folder}/{topic_slug}_{level}_{N}w_{YYYYMMDD}/
├── 00_curriculum.md    ← full curriculum + settings header
├── week01.md           ← week 1 (post-feedback final version)
├── week02.md
├── ...
└── full_course.md      ← combined (generated after ALL weeks done)
```

### Completion message:
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎉 Complete! — {topic} {level} {N}-week course
  Estimated reading : ~{N*8} pages
  Recommended study : 3-4 hrs/week
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Resume from Previous Session

When user says "continue", "resume", "from week N", or "이어서":
1. Ask for output folder path (if not provided)
2. Use Glob to list existing week files
3. Generate missing weeks starting from the next one

---

## Notes

- External links are AI knowledge-based — verify validity yourself
- Uncertain URLs → use "Search: {query}" format instead
- All files: UTF-8 encoding
- If a week fails: log error in week file, continue to next week
- When updating SKILL.md: modify only the relevant section

---

## Custom Format Rules

> This section is auto-updated based on user feedback.

Current rules (defaults):
- Concept definitions: minimum 5 sentences
- Examples: minimum 2 per concept (good vs bad)
- Analogies: required for every concept
- Word count: minimum 1,500 words per week
