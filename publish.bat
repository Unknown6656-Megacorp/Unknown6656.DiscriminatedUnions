@echo off
    SETLOCAL ENABLEDELAYEDEXPANSION
    FOR %%p IN (.,pub,publish,Unknown6656.Publisher,../Unknown6656.Publisher) DO (
        SET _pyfile="%%p/publish.py"
        ECHO looking for python script inside %%p ...
        IF EXIST "!_pyfile!" (
            ECHO invoking python script !_pyfile! ...
            python "!_pyfile!" "%~f0"
            GOTO :success
        )
    )

:failure
    ECHO The file 'publish.py' could not be found in one of the following directories:
    ECHO     - ./
    ECHO     - pub/
    ECHO     - publish/
    ECHO     - Unknown6656.Publisher/
    ECHO     - ../Unknown6656.Publisher/
    ECHO Please clone 'https://github.com/Unknown6656-Megacorp/Unknown6656.Publisher' into the current or corresponding directoy.

:success
    SET "_pyfile="
    ENDLOCAL
