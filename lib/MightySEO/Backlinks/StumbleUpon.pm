package MightySEO::Backlinks::StumbleUpon;

use Moose;
use Carp;
use WWW::StumbleUpon::Badge;
use DDP;

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    my $resp = WWW::StumbleUpon::Badge->get_info({
        url => $url,
    });

    warn p $resp->{result}->{views};
}

1;
