#!/bin/bash

show_help(){
    echo -e "DataHaskell docker image"
    echo -e "  ARGS:"
    echo -e "\trebuild\t- Rebuilds the image, useful when adding dependencies"
    echo -e "\trun\t- Runs the docker container on the current directory"
}

if [ "$#" -ne 1 ]
then
    show_help
else
    if [ "$1" == "run" ]
    then
        docker run -it --volume `pwd`/IHaskell/notebooks:/notebooks --publish 8888:8888 datahaskell-ihaskell
    else
        if [ "$1" == "rebuild" ]
        then
            docker build -t datahaskell-ihaskell IHaskell
        else
            show_help
        fi
    fi
fi
