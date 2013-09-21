#scalar reference

use Modern::Perl 2011;


my $name = 'something';

say $name;

my $name_ref = \$name;


#add an extra $ to dereferrence (to access the value)

sub reverse_and_save
{
	my $name = shift;
	$$name = reverse $$name;
	
}

say reverse_and_save($name_ref);

say $name;