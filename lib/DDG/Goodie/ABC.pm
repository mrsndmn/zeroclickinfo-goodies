package DDG::Goodie::ABC;

use DDG::Goodie;
use strict;
use warnings;

zci answer_type => 'quick_pow';
zci is_cached => 1;

triggers startend => 'pow';

# Handle statement
handle remainder => sub {

	return unless /^\s*\d+(?:\s|,)+\d+\s*$/;

	my ($base, $exp) = grep { /^\d/ } split m/(?:\s|,)+/;

	my $ans = 1;

	while ($exp) {
		# if base is odd 
		if ($exp & 1) {
			$ans *= $base;
			--$exp;
		} else {
			$base *= $base;
			$exp >>= 1;
		}
	}

    return  "$base raised to the power of $exp is $ans",
        structured_answer => {

            data => {
                title    => '$ans',
                subtitle => '$base raised to the power of $exp',
            },

            templates => {
                group => 'text',
            }
        };
};

1;
