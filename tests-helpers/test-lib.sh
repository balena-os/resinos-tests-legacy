#!/bin/bash

function log {
    # Address log levels
    case $1 in
        ERROR)
            loglevel="ERR "
            shift
            ;;
        WARN)
            loglevel="WARN"
            shift
            ;;
        DEBUG)
            loglevel="DEBUG"
            shift
            ;;
        *)
            loglevel="INFO"
            ;;
    esac
    echo "[$loglevel] $@"
    if [ "$loglevel" == "ERR " ]; then
        exit 1
    fi
}
