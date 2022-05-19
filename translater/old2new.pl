#!/usr/bin/perl
while(<>){
    if(/^\s*#/){
        print
    }elsif(/;\s*[ifp];\s*([^#\n\r]*)(#*.*)\s*/){
        print "$`=$1;$2\n";
    }else{
        print
    }
}
