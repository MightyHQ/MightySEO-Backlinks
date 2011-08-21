package MightySEO::Backlinks::TweetMeme;

use Moose;
use Carp;
use DDP;

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';
}

1;
