#!/usr/bin/perl
while(<>){
    if(/^\s*#/){
        print
    }elsif(/\[(.+)\] = (.+),\\/){
        #print "$`=$1;$2\n";
        $key = $1;
        $value = $2;
        print "{$key, $value},\n";
    }
}
