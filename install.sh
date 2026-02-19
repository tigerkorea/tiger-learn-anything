#!/bin/bash
# tiger-learn-anything — Claude Code Skill Installer (Mac/Linux)

SKILL_DIR="$HOME/.claude/skills/learn-anything"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚  tiger-learn-anything"
echo "    Claude Code Skill Installer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

mkdir -p "$SKILL_DIR"
cp "SKILL.md" "$SKILL_DIR/SKILL.md"

echo "✅ Installed: $SKILL_DIR/SKILL.md"
echo ""
echo "🚀 Try it in Claude Code:"
echo "   learn-anything Bitcoin"
echo "   learn-anything Python"
echo "   커리큘럼만들어 마라톤"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
