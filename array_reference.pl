#Array References

use Modern::Perl 2011;

my @array = qw(January February March April May June July August September October November December);

#create reference

my $month_ref = \@array;

#count

my $month_count = @$month_ref;

say $month_count;

#copy

my @month_copy = @$month_ref;

say "@month_copy ";

#access single values

my $firstmonth = $month_ref->[0];
my $lastmonth = $month_ref->[11];

say "$firstmonth to $lastmonth";

#create slices

my @hotMonths = @{ $month_ref }[2,3,4,5];

say "@hotMonths ";