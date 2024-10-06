@ECHO OFF

@REM REM SET INIT VARIABLE to cmd.
SET THIS_PATH=%cd%
SET REPO_PATH="https://github.com/nawatc/our_king_is_wizard"


@REM  %~1 is first paramiter pass as argument in cmd
@REM  echo "%~1"

IF "%~1"=="" GOTO :PHONY
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


@REM :CLONE
@REM     @REM git clone
@REM     cd %THIS_PATH%
@REM     git clone %REPO_PATH%
@REM     GOTO :END
@REM :COMMIT
@REM     @REM git commit

@REM     GOTO :END
@REM :CLEAN
@REM     @REM Clean

@REM     GOTO :END
@REM :BUILD
@REM     @REM Build

@REM     GOTO :END

:END
    @REM This is the end for you. procress