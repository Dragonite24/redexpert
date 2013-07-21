#!/bin/sh

# Java heap size, in megabytes
JAVA_HEAP_SIZE=512

# determine the java command to be run
JAVA=`which java`

if [ "X$JAVA" = "X" ]; then
    # try possible default location (which should have come up anyway...)
    JAVA=/usr/bin/java
fi

# DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

exec $JAVA "-javaagent:agent.jar=ExecuteQuery" -mx${JAVA_HEAP_SIZE}m -jar "eq.jar" &

