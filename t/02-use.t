use Test::More;
use FindBin::libs;

use MightySEO::Backlinks::Delicious;
use MightySEO::Backlinks::Facebook;
use MightySEO::Backlinks::SEOmoz;
use MightySEO::Backlinks::StumbleUpon;

my @SUBS = qw/ get_backlinks /;

my $delicious = MightySEO::Backlinks::Delicious->new;
isa_ok( $delicious, 'MightySEO::Backlinks::Delicious' );
can_ok( $delicious, @SUBS );

my $delicious = MightySEO::Backlinks::Facebook->new;
isa_ok( $delicious, 'MightySEO::Backlinks::Facebook' );
can_ok( $delicious, @SUBS );

my $delicious = MightySEO::Backlinks::SEOmoz->new;
isa_ok( $delicious, 'MightySEO::Backlinks::SEOmoz' );
can_ok( $delicious, @SUBS );

my $delicious = MightySEO::Backlinks::StumbleUpon->new;
isa_ok( $delicious, 'MightySEO::Backlinks::StumbleUpon' );
can_ok( $delicious, @SUBS );

done_testing;
