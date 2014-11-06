#!perl

use strict; use warnings;
use Crypt::Image;
use Test::More tests => 2;

eval { Crypt::Image->new() };
like($@, qr/Missing required arguments: file/);

eval { Crypt::Image->new(file => 't/key.pgn') };
like($@, qr/isa check for "file" failed/);
