echo off
title Upload to Pinv's Development Server
color c
cls
echo.
echo Upload to Pinv's Development Server
echo.
set /p file="File: " 
git init
git add %file%
if "%username%" == "jason" (
	git config --global user.email "[YT] pinv@example.com"
	git config --global user.name "[YT] pinv"
	git commit -m "Upload File Batch on %date% by [YT] pinv"
	git branch -M main
	git remote add origin https://github.com/ghpinv/privatetest.git
	git push -u origin main
) else (
	git config --global user.email "%username%@example.com"
	git config --global user.name "%username%"
	git commit -m "Upload Batch on %date% by %username%"
	git branch -M main
	git remote add origin https://github.com/ghpinv/privatetest.git
	git push -u origin main
)
echo.
echo.
pause