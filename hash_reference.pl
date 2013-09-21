#hash_reference

use Modern::Perl 2011;

my %sounds = (
	cat => 'meow',
	dog => 'bark',
	lion => 'roar',
	duck => 'quack',
	snake => 'hiss',
	horse => 'neigh',
	elephant => 'trumpet',
);

#create reference

my $sounds_ref = \%sounds;


#access keys

my @animal = keys %$sounds_ref;

my @sound = values %$sounds_ref;


say "animals : @animal ";
say "sounds : @sound ";


#access values

sub animal_sounds
{
	my $animal = shift;

	return $sounds_ref->{$animal};

}

say animal_sounds('duck');


#hash slices

my @sounds_slice = @{$sounds_ref}{'dog', 'lion', 'snake'};

say "@sounds_slice ";