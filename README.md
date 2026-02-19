# 📚 tiger-learn-anything

> A Claude Code skill that generates structured weekly study materials for **any topic** using a 4-agent AI pipeline.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skill-blue)](SKILL.md)

---

## What it does

Tell it a topic. Get a full curriculum + weekly study materials.

```
You:  "Bitcoin"  →  choose level  →  choose duration

[Planner]    Designs a week-by-week curriculum
     ↓ You approve
[Researcher] Collects concepts, resources, exercises per week
     ↓
[Writer]     Writes detailed study materials (1,500+ words/week)
     ↓
[Editor]     Reviews and finalizes
     ↓
📁  Saved as markdown files in learn-output/
```

Each weekly file includes:
- 🧩 Key concepts (5+ sentence definitions, 2 examples, analogy)
- 📊 Key data & statistics
- 🔗 Recommended resources (with links or search queries)
- 🛠️ Hands-on exercise
- ✅ Weekly checklist
- ❓ 5-question quiz with answers
- 🚀 Next week preview

---

## Installation

### Mac / Linux
```bash
git clone https://github.com/vietnamtigger/tiger-learn-anything.git
cd tiger-learn-anything
bash install.sh
```

### Windows
```bat
git clone https://github.com/vietnamtigger/tiger-learn-anything.git
cd tiger-learn-anything
install.bat
```

### Manual
```bash
mkdir -p ~/.claude/skills/learn-anything
cp SKILL.md ~/.claude/skills/learn-anything/SKILL.md
```

---

## Usage

After installation, use any of these triggers in Claude Code:

```
learn-anything Bitcoin
learn-anything "Modern History"
커리큘럼만들어 마라톤
학습커리큘럼 Python
호랑이 런애니띵 비트코인
```

You'll be asked:
1. **Level** — Beginner / Intermediate / Advanced
2. **Duration** — 4 / 8 / 12 weeks
3. **Model** — Sonnet (fast) / Opus (quality)
4. **Output folder** — where to save files

After Week 1 is generated, give feedback to customize the format. The skill updates itself and regenerates.

---

## Output structure

```
learn-output/
└── Bitcoin_Intermediate_8w_20260219/
    ├── 00_curriculum.md
    ├── week01.md
    ├── week02.md
    ├── ...
    └── full_course.md
```

---

## Works with any topic

| Field | Examples |
|-------|---------|
| Finance | Bitcoin, Stock Market, Quant Trading |
| History | Modern History, Roman Empire, WWII |
| Sports | Marathon, Swimming, Strength Training |
| Tech | Python, Machine Learning, Web Dev |
| Other | Astronomy, Music Theory, Cooking Science |

---

## License

MIT — free to use, modify, and distribute.
