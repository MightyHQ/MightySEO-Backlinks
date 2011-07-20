package MightySEO::Backlinks;

use Moose;
use Carp;
use Module::Pluggable
    instantiate => 'new',
    search_path => ['MightySEO::Backlinks'];

sub get_backlinks {
    my $self = shift;
    my $url  = shift || croak 'URL required';

    foreach ( $self->plugins ) {
        $_->get_backlinks( $url );
    }
}

1;
