#!/bin/sh

DIRTY=0

if [ -f /tmp/task-dirty ]
then
    DIRTY=`cat /tmp/task-dirty`
fi

if [ ${DIRTY} -eq 1 ]
then
    cd ~/.task
    git pull -q
    git push -q
    echo 0 > /tmp/task-dirty
fi
