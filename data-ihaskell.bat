@ECHO OFF

SET man1=%1

IF NOT "%1"=="" (
    IF "%1"=="rebuild" (
        docker build -t datahaskell-ihaskell IHaskell
        goto END
    )
    IF "%1"=="run" (
        docker run -it --volume %cd%:/notebooks --publish 8888:8888 datahaskell-ihaskell
        goto END
    )
)
@echo DataHaskell docker image
@echo ARGS:
@echo      rebuild - Rebuilds the image, useful when adding dependencies
@echo      run     - Runs the docker container on the current directory

:END