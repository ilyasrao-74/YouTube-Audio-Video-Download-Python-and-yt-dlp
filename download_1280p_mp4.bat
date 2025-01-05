@echo off
echo =============================
echo YouTube MP4 Downloader
echo =============================
echo.

:: Prompt the user for the URL
set /p url=Enter YouTube URL: 

:: Run yt-dlp to download the video with fallback to the best resolution
yt-dlp -f "bv*+ba/b" --merge-output-format mp4 -o "%%(title)s.%%(ext)s" "%url%"

echo.
echo Download completed!
pause
