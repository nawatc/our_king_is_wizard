@ECHO OFF

@REM REM SET INIT VARIABLE to cmd.
SET THIS_PATH=%cd%
SET REPO_PATH="https://github.com/nawatc/our_king_is_wizard"


@REM  %~1 is first paramiter pass as argument in cmd
@REM  echo "%~1"

IF "%~1"=="" GOTO :PHONY
@REM IF "%~1"=="clone" GOTO :CLONE
IF "%~1"=="--help" GOTO :HELPER

GOTO :END



:PHONY
    @REM PHONY is 
    ECHO No Argument for make.
    ECHO try command like : make --help
    GOTO :END

:HELPER
    @REM 
    ECHO make --help : Open this page.
    ECHO make clone : clone project from github

    GOTO :END

:CLONE
    @REM git clone
    cd %THIS_PATH%
    git clone %REPO_PATH%
    GOTO :END






:COMMIT
    @REM git commit

    GOTO :END
:CLEAN
    @REM Clean

    GOTO :END
:BUILD
    @REM Build

    GOTO :END

:END
    @REM This is the end for you. procress