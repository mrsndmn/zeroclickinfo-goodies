package DDG::Goodie::QuickPow;
# ABSTRACT: quick pow

use strict;
use warnings;
use DDG::Goodie;

# triggers startend => 'pow';

# zci answer_type => 'quick_pow';
# zci is_cached => 1;

# # Handle statemen
# handle remainder => sub {

# 	return unless /^\s*\d+(?:\s|,)+\d+\s*$/;

# 	my ($base, $exp) = grep { /^\d/ } split m/(?:\s|,)+/;

# 	my $ans = 1;
# 	my ($b_clone, $exp_clone) = ($base, $exp);
	
# 	while ($exp_clone) {
# 		# if base is odd 
# 		if ($exp_clone & 1) {
# 			$ans *= $b_clone;
# 			--$exp_clone;
# 		} else {
# 			$b_clone *= $b_clone;
# 			$exp_clone >>= 1;
# 		}
# 	}

#     return  "$base raised to the power of $exp is $ans",
#         structured_answer => {

#             data => {
#                 title    => "$ans",
#                 subtitle => "$base raised to the power of $exp",
#             },

#             templates => {
#                 group => 'text',
#             }
#         };
# };

1;
