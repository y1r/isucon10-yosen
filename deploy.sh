#!/bin/bash

if [ $# -ne 0 ]; then
	    exit 1
    fi


    echo Stopping nginx.service ...
    sudo systemctl stop nginx.service
    echo Stopping isuumo.go.service ...
    sudo systemctl stop isuumo.go.service
    #echo Stopping mysql.service ...
    sudo systemctl stop mysql.service

    sudo rm -rf /var/log/nginx/access.log

    pushd webapp/go
    git status

    echo make
    make

    popd


    #echo Starting mysql.service ...
    sudo systemctl stop mysql.service
    echo Starting isuumo.go.service ...
    sudo systemctl start isuumo.go.service
    echo Starting nginx.service ...
    sudo systemctl start nginx.service
