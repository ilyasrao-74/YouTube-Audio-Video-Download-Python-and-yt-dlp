@echo off
echo ============================
echo YouTube to MP3 Downloader
echo ============================
echo.

:: Prompt the user for the URL
set /p url=Enter YouTube URL: 

:: Run yt-dlp with the provided URL
yt-dlp -f ba --extract-audio --audio-format mp3 -o "%%(title)s.%%(ext)s" "%url%"

echo.
echo Download completed!
pause
