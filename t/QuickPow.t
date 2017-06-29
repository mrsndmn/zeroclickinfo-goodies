#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Deep;
use DDG::Test::Goodie;

zci answer_type => 'quick_pow';
zci is_cached   => 1;

# Build a structured answer that should match the response from the
# Perl file.
sub build_structured_answer {
    my @test_params = @_;

    return '2 raised to the power of 8 is 256',
        structured_answer => {

            data => {
                title    => '256',
                subtitle => '2 raised to the power of 8',
            },

            templates => {
                group => 'text',
            }
        };
}

# Use this to build expected results for your tests.
sub build_test { test_zci(build_structured_answer(@_)) }

ddg_goodie_test(
    [qw( DDG::Goodie::QuickPow )],
    # At a minimum, be sure to include tests for all:
    # - primary_example_queries
    # - secondary_example_queries
    'pow 2 8' => build_test(),
    # Try to include some examples of queries on which it might
    # appear that your answer will trigger, but does not.
    # 'bad example query' => undef,
);

done_testing;
