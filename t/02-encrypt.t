#!perl

use strict; use warnings;
use Crypt::Image;
use Test::More tests => 1;

my $crypter = Crypt::Image->new(file => 't/key.png', type => 'png');

eval { $crypter->encrypt() };
like($@, qr/ERROR: Missing text to encrypt./);