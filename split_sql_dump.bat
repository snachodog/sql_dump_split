@echo off
setlocal enabledelayedexpansion

REM Set your SQL dump file name here
set "SQL_DUMP_FILE=your_dump.sql"

REM Variable to hold the current output file name
set "CURRENT_DB_FILE="

REM Read each line from the SQL dump
for /f "tokens=*" %%a in (%SQL_DUMP_FILE%) do (
    REM Check if the line contains the database name
    echo %%a | findstr /c:"-- Database: " >nul
    if !errorlevel! == 0 (
        REM Extract the database name and create a new file name
        for /f "tokens=2 delims=`" %%b in ("%%a") do (
            set "CURRENT_DB_FILE=%%b.sql"
        )
    )

    REM If a current database file is set, append the line to it
    if not "!CURRENT_DB_FILE!" == "" (
        echo %%a >> !CURRENT_DB_FILE!
    )
)

endlocal
