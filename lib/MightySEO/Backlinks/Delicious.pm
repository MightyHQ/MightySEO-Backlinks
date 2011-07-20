package MightySEO::Backlinks::Delicious;

use Moose;
use Carp;
use WWW::Delicious::Simple;
use DDP;

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    my @resp = WWW::Delicious::Simple->get_url_info({ url => $url });

    warn p $resp[0][0]{total_posts};

}

1;
