#!/bin/sh

readonly PATH_OUTPUT=${2:-output}

if [ "o$1" = 'o' ]
then
    echo 'param error'
    exit 1
fi

if [ ! -d $PATH_OUTPUT ]
then
    mkdir -p $PATH_OUTPUT
fi

if [ -f ./translate.pl ]
then
./translate.pl $1 > $PATH_OUTPUT/${1##*/}
else
    echo "translate $1 error:"
    echo '    set translater by set_translater.sh'
    exit 1
fi
