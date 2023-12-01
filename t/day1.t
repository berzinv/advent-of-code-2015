use v5.38;

use Test::Simple tests => 1;
use File::Slurp;

use Day1 qw(problem1 problem2);

# DAY 1 #

## Problem 1
my $data = read_file("data/day1.1.txt");
ok(problem1($data) == 74, "2015 day 1 problem 1");

# ## Problem 2 sample
# my @data2sample = read_file("data/2023.day1.2.sample.txt");
# ok(problem2(@data2sample) eq 281, "2023 day 1 problem 2 sample");

# ## problem 2
ok(problem2($data) == 1795, "2015 day 1 problem 2");

