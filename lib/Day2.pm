use v5.38;

package Day2;

use Exporter qw(import);
our @EXPORT_OK = qw(problem1 problem2);

use Data::Dumper;
use List::Util qw(sum min);

sub compute_wrapping_size($data) {
    my ($l, $w, $h) = split 'x', $data;
    return 2 * $l * $w + 2 * $w * $h + 2 * $h * $l + min $l * $w, $w * $h, $h * $l;
}

sub problem1(@data) {
    return sum map { compute_wrapping_size $_ } @data;
}

sub compute_ribbon_size($data) {
    my ($l, $w, $h) = split 'x', $data;
    return min(($l + $l + $w + $w), ($w + $w + $h + $h), ($h + $h + $l + $l)) + $l * $w * $h;
}

sub problem2(@data) {
    return sum map { compute_ribbon_size $_ } @data;
}

1;
