@echo off
call mvn clean test package
exit /b %ERRORLEVEL%
