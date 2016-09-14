@ECHO OFF

IF NOT "%1"=="" (
    IF "%1"=="rebuild" (
        docker build -t datahaskell-ihaskell IHaskell
        goto END
    )
    IF "%1"=="run" (
        SET pwd=%cd%
        SET pwd=%pwd:\=/%
        echo Current directory is %pwd%
        echo Remember to enable this drive in "Shared Drives" within Docker settings
        docker run -it --volume "%pwd%":/notebooks --publish 8888:8888 datahaskell-ihaskell
        goto END
    )
)
@echo DataHaskell docker image
@echo ARGS:
@echo      rebuild - Rebuilds the image, useful when adding dependencies
@echo      run     - Runs the docker container on the current directory

:END
