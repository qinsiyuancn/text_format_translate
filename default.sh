#!/bin/bash
if [ "o$1" != 'o' ]
then
    ./set_translater.sh $1
fi

./recursive.sh
