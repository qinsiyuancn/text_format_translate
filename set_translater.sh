#!/bin/sh

if [ "o$1" = 'o' ]
then
    if [ -f translate.pl ]
    then
        rm translate.pl
    fi
    for i in $(ls translater)
    do
        echo ${i%.*}
    done
    exit 1
fi

cp translater/$1.pl translate.pl
