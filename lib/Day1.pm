use v5.38;

package Day1;

use Exporter qw(import);
our @EXPORT_OK = qw(problem1 problem2);

use Syntax::Keyword::Match;

sub problem1($data) {
    my @tokens = split '', $data;
    my $result = 0;
    
    foreach my $token (@tokens) {
	match($token : eq) {
	    case('(') { ++$result }
	    case(')') { --$result }
	}
    }

    return $result;
}

sub problem2($data) {
    my @tokens = split '', $data;
    my $result = 0;
    my $count = 0;

    foreach my $token (@tokens) {
	match($token : eq) {
	    case('(') { ++$result }
	    case(')') { --$result }
	}

	$count++;

	if($result == -1) {
	    return $count
	}
    }

    return $count;    
}
