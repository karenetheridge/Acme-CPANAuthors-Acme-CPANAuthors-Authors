#!perl -I../lib
use strict;
use warnings;
use Acme::CPANAuthors;
use Test::More tests => 3;
my $authors
    = Acme::CPANAuthors->new('Acme::CPANAuthors::Acme::CPANAuthors::Authors');
is($authors->count, 24, 'number of authors == 24');
is_deeply(
    [sort $authors->id],
    [qw[ ABIGAIL  ACALPINI ASHLEY AZAWAWI
         BARBIE   BINGOS   BRACETA  BURAK
         FAYLAND  FLORA
         GARU     GUGOD
         HINRIK
         ISHIGAKI
         KENTARO
         MARCEL   MONS
         SANKO    SAPER    SFINK  SHARIFULN SHLOMIF
         VPIT
         ZOFFIX ]
    ],
    'list of author IDs'
);
is($authors->name('SANKO'), q[Sanko Robinson], q[yay, it's me again]);
