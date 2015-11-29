use Carp;
use strict;
use warnings;

sub given_verify {
	my ($ciphr_0, $plain_0, $ciphr_3, $plain_3)=@_;
	my $presumed_key = $ciphr_0 ^ $plain_0;
	return ( $plain_3 ^ $presumed_key ) == $ciphr_3;
}

sub arrage_key {
	my $start = shift;
	my @keys = @_;
	my $key_len = 3;
	for(my $i = 0; $i < $start % $key_len; $i++) {
		unshift @keys, pop @keys;
	}
	return @keys;
}

sub main {
	# get input cipher
    my $input = <>;
	chomp($input);
    my @ciphers = split /,/, $input;
    
	# declare variables used
    my @Natural=qw(N a t u r a l);
    my @keys;
	my $key_len=3;
	
    
	# get key
    for (my $i = 0; $i < @ciphers-$key_len; $i++){
		# try match Natural
		my $j;
		for($j = 0; $j < @Natural-$key_len; $j++){
			last if( !given_verify($ciphers[$i + $j], ord $Natural[$j],
			   	$ciphers[$i + $j + $key_len], ord $Natural[$j + $key_len]));
        }
		# if match Natural, get key
		if($j == @Natural-$key_len){
			for(my $k = 0; $k < $key_len; $k++){
				push @keys, $ciphers[$i + $k] ^ ord $Natural[ $k ];
			}
			@keys = arrage_key($i, @keys);
			last;
		} 
		# else rush to failling position
		else {
			$i += $j - 1 if( $j != 0 );		# minus one for $i++
		}
    }
	if(@keys == 0){
		print "No 'Natural' word found! \n";
		return;
	}




    
	#print @keys;
	# calculate ascii sum while decrypting the cipher 
	my %chars;
	my $sum = 0;
	for(my $i = 0; $i < @ciphers; $i++){
		my $plain = $ciphers[ $i ] ^ $keys[ $i % 3 ];
		#if( !exists $chars{ chr($plain) } ){ $sum += $plain; $chars{ chr($plain) } = 1; }
		print chr $plain;
	}
	print "\n";
	#print "$sum\n";
}

main;
