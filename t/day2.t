use v5.38;

use Test::Simple tests => 2;
use File::Slurp;

use Day2 qw(problem1 problem2);

## Problem 1
my @data = read_file("data/day2.1.txt");
ok(problem1(@data) == 1586300, "2015 day 2 problem 1");

## problem 2
ok(problem2(@data) == 3737498, "2015 day 2 problem 2");

