@echo off
chcp 65001 >nul
REM tiger-learn-anything -- Claude Code Skill Installer (Windows)

SET SKILL_DIR=%USERPROFILE%\.claude\skills\learn-anything

echo.
echo ==========================================
echo   tiger-learn-anything
echo   Claude Code Skill Installer
echo ==========================================
echo.

if not exist "%SKILL_DIR%" mkdir "%SKILL_DIR%"
copy "SKILL.md" "%SKILL_DIR%\SKILL.md" >nul

echo [OK] Installed: %SKILL_DIR%\SKILL.md
echo.
echo Try it in Claude Code:
echo    learn-anything Bitcoin
echo    learn-anything Python
echo    curriculum-make marathon
echo.
echo ==========================================
pause
