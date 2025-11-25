@echo off
echo ================================
echo Committing README updates with images
echo ================================
echo.

cd "C:\Users\chara\OneDrive\Documents\projects\my-n8n-workflows"

echo Adding files to git...
git add .

echo.
echo Creating commit...
git commit -m "Add images to README files and enhance documentation

- Added workflow diagram images to all README files
- Updated main README with visual previews of all workflows
- Enhanced documentation with better formatting
- Added workflow JSON file references"

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo ================================
echo Done! Check your repo at:
echo https://github.com/Charan071/my-n8n-workflows
echo ================================
pause
