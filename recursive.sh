#!/bin/sh

readonly OUTPUT=${2:-output}
readonly INPUT=${1:-input}

if [ "o$INPUT" = 'o' ]
then
    echo param error
    exit 1
fi

if [ ! -d $OUTPUT ]
then
    mkdir -p $OUTPUT
fi

recursive()
{
    local i
    for i in $(ls $INPUT/$1)
    do
        if [ -d $INPUT/$1/$i ]
        then
            mkdir "$OUTPUT/$1/$i"
            recursive "$1/$i"
        else
            ./translate.sh "$INPUT/$1/$i" "$OUTPUT/$1" & 
        fi
    done
}

recursive '.'
