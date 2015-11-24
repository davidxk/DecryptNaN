use Carp;
use strict;
use warnings;


sub verifyULposition{
    my $key = shift;
    my $charU = shift;
    my $charL = shift;
    
    return 1 if( ($charU ^ $key) == ord 'u' && ($charL ^ $key) == ord 'l' );
    return 0; 
}

sub verifyWordNatural{
    my $position = shift;
    my @ciphers = @_;
    my @keys;

    my $key2 = $ciphers[$position+1] ^ ord 'a'; # 97 means 'a'
    my $key3 = $ciphers[$position+2] ^ ord 't'; # 116 means 't'
    if(($ciphers[$position+4] ^ $key2) == ord 'r' &&
	   	($ciphers[$position+5] ^ $key3) == ord 'a' ){

        my $key1 = $ciphers[$position] ^ ord 'N';  # 78 means 'N'
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
	# get input cipher
    my $input = <>;
    my @ciphers = split /,/, $input;
    
	# declare variables used
    my @NulIndexes;
    my @keys;
    
	# first iteration: get 'N..u..l's, store indexes in @NulIndexes
    for (my $i = 0; $i < @ciphers; $i++){
        my $targetKey = $ciphers[$i] ^ ord 'N'; #78  means N
        if(verifyULposition($targetKey, $ciphers[$i+3], $ciphers[$i+6])){
            push @NulIndexes, $i;
        }
    }
	# handling exception scenarios
    if(!@NulIndexes){
        print "there is not Natural word found!";
        return;
    }
	elsif(@NulIndexes == 1){
        @keys = verifyWordNatural($NulIndexes[0], @ciphers);
    }
    




    for(my $i = 0; $i < @NulIndexes; $i++){
            if($i==$#NulIndexes || $NulIndexes[$i+1]-$NulIndexes[$i] >= 7){
                @keys = verifyWordNatural($NulIndexes[$i], @ciphers);
                last if(@keys);
            }
    }
    if(!@keys){
        print "there is not Natural word found!";
        return;
    }
    
	#TODO: decrypt the cipher
	#TODO: calculate ascii sum
  
}

main;
