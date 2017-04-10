#!/bin/sh

DIRTY=0

while read x
do
    DIRTY=1
done

if [ ${DIRTY} -eq 1 ]
then
    cd ~/.task
    git commit -m "Hook Commit" *.data
    git pull -q
    git push -q
fi

echo ${1}
