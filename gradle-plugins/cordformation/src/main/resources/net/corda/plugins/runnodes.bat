@echo off

REM Change to the directory of this script (%~dp0)
Pushd %~dp0

FOR /D %%G in (.\*) DO (
 Pushd %%G
 start java -jar NODEJAR_NAME
 start java -jar WEBJAR_NAME
 Popd
)

Popd