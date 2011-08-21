use Test::More;
use FindBin::libs;

use MightySEO::Backlinks;

my $backlinks = MightySEO::Backlinks->new;

ok($backlinks, 'Got something');
isa_ok($backlinks, 'MightySEO::Backlinks');

$backlinks->get_backlinks( 'www.twitter.com' );

done_testing;
