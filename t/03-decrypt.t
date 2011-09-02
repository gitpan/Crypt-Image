#!perl

use strict; use warnings;
use Crypt::Image;
use Test::More tests => 2;

my $crypter = Crypt::Image->new(file => 't/key.png', type => 'png');
$crypter->encrypt('Hello World', 't/secret.png');

eval { $crypter->decrypt() };
like($@, qr/ERROR: Missing encrypted file name/);

is($crypter->decrypt('t/secret.png'), 'Hello World');

unlink('t/secret.png');