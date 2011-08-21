use Test::More tests => 10;
use FindBin::libs;

BEGIN { use_ok( 'MightySEO::Backlinks' ); }
require_ok( 'MightySEO::Backlinks' );

BEGIN { use_ok( 'MightySEO::Backlinks::Delicious' ); }
require_ok( 'MightySEO::Backlinks::Delicious' );

BEGIN { use_ok( 'MightySEO::Backlinks::Facebook' ); }
require_ok( 'MightySEO::Backlinks::Facebook' );

BEGIN { use_ok( 'MightySEO::Backlinks::SEOmoz' ); }
require_ok( 'MightySEO::Backlinks::SEOmoz' );

BEGIN { use_ok( 'MightySEO::Backlinks::StumbleUpon' ); }
require_ok( 'MightySEO::Backlinks::StumbleUpon' );
