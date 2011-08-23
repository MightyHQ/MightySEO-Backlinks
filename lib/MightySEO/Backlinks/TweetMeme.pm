package MightySEO::Backlinks::TweetMeme;

use Moose;
use Carp;
use WWW::TweetMeme;
use DDP;

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    # TODO more robust URL construction
    # TODO make sure each plugin uses the expected URL format
    $url = 'http://'.$url;

    my $resp = WWW::TweetMeme->get_url_info({
        url => $url,
    });

    warn p $resp->{story}->{url_count};
}

1;
