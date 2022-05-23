#!/usr/bin/perl
while(<>){
    if(/^\s*#/){
        
    }elsif(/\n/){
        print "$`";
    }
}
