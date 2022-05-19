#!/usr/bin/perl
while(<>){
    if(/^\s*#/){
        print
    }elsif(/(.+)=(.+);/){
        #print "$`=$1;$2\n";
        $name = $1;
        $value = $2;
        if($value =~ /,/){
            $type = "p";
        }elsif( $value =~ /\./ ){
            $type = "f";
        }else{
            $type = "i";
        }
        print "$name;\t\t$type;\t$value\n";
    }
}
