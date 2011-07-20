package MightySEO::Backlinks::Facebook;

use Moose;
use Carp;
use WWW::Facebook::FQL::Simple;
use DDP;

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    my @resp = WWW::Facebook::FQL::Simple->query({
        query => $self->_build_query( $url )
    });

    warn p $resp[0][0]{like_count}; # The insane data structure returned from FB

}

sub _build_query {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    return "SELECT like_count FROM link_stat WHERE url=\"$url\"";

}

1;
