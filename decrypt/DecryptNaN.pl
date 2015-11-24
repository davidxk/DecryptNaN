use Carp;
use strict;
use warnings;


sub verifyULposition{
    my $key = shift;
    my $characterU = shift;
    my $characterL = shift;
    
    return 1 if(($characterU ^ $key) == ord("u") && ($characterL ^ $key) == ord("l") );
    
    return 0; 
}

sub verifyNaturalWord{
    my $position = shift;
    my @ciphers = @_;
    my @keys;

    my $key2 = $ciphers[$position+1] ^ 97; # 97 means 'a'
    my $key3 = $ciphers[$position+2] ^ 116; # 116 means 't'
    if(($ciphers[$position+4] ^ $key2) == ord("r") && ($ciphers[$position+5] ^ $key3) == ord("a") ){
        my $key1 = $ciphers[$position] ^ 78;  # 78 means 'N'
        if($position % 3 == 0){
            @keys = ($key1, $key2, $key3);
        }elsif($position % 3 == 1){
            @keys = ($key3, $key1, $key2);
        }elsif($position % 3 == 2){
            @keys = ($key2, $key3, $key1);
        }
        return @keys;
    }
    
    return @keys;
    
}




sub main {
    my $input = <>;
    my @ciphers = split /,/, $input;
    
    my @naturalArrayPositions;
    my @keys;
    
    for (my $i = 0; $i < @ciphers; $i++){
        my $targetKey = $ciphers[$i] ^ 78; #78  means N
        if(verifyULposition($targetKey, $ciphers[$i+3], $ciphers[$i+6])){
            push @naturalArrayPositions, $i;
        }
    }
    
    if(!@naturalArrayPositions){
        print "there is not Natural word found!";
        return;
    }
    
    if(@naturalArrayPositions == 1){
        @keys = verifyNaturalWord($naturalArrayPositions[0], @ciphers);
    }
    
    for(my $i = 0; $i < @naturalArrayPositions; $i++){
        if($i == 0){
            if($naturalArrayPositions[$i+1]-$naturalArrayPositions[$i] >= 7){
                @keys = verifyNaturalWord($naturalArrayPositions[$i], @ciphers);
                last if(@keys);
            }
        }elsif($i == scalar (@naturalArrayPositions) -1 ){
            if($naturalArrayPositions[$i]-$naturalArrayPositions[$i-1] >= 7){
                @keys = verifyNaturalWord($naturalArrayPositions[$i], @ciphers);
                last if(@keys);
            }else{
                print "there is not Natural word found!";
                return;
            }
        }else{
            if($naturalArrayPositions[$i+1]-$naturalArrayPositions[$i] >= 7 && $naturalArrayPositions[$i]-$naturalArrayPositions[$i-1] >= 7){
                @keys = verifyNaturalWord($naturalArrayPositions[$i], @ciphers);
                last if(@keys);
                
            }
        }
        
    }
    
    if(!@keys){
        print "there is not Natural word found!";
        return;
    }
    
  
}

main;