package MightySEO::Backlinks::SEOmoz;

use Moose;
use Carp;
use WWW::SEOmoz;
use Config::Tiny;
use DDP;

has client => (
    is         => 'ro',
    isa        => 'WWW::SEOmoz',
    lazy_build => 1,
);

sub _build_client {
    my $self = shift;

    my $config = Config::Tiny->read( 'properties.conf' );

    my $access_id  = $config->{seomoz}->{access_id};
    my $secret_key = $config->{seomoz}->{secret_key};

    return WWW::SEOmoz->new({
        access_id => $access_id, secret_key => $secret_key,
    });
}

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    my $resp = $self->client->url_metrics( $url )->external_links;

    warn p $resp;

}

1;
