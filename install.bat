@echo off
REM tiger-learn-anything — Claude Code Skill Installer (Windows)

SET SKILL_DIR=%USERPROFILE%\.claude\skills\learn-anything

echo.
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo 📚  tiger-learn-anything
echo     Claude Code Skill Installer
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

if not exist "%SKILL_DIR%" mkdir "%SKILL_DIR%"
copy "SKILL.md" "%SKILL_DIR%\SKILL.md" >nul

echo ✅ Installed: %SKILL_DIR%\SKILL.md
echo.
echo 🚀 Try it in Claude Code:
echo    learn-anything Bitcoin
echo    learn-anything Python
echo    커리큘럼만들어 마라톤
echo.
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
pause
