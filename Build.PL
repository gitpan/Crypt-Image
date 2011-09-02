use strict; use warnings;
use Module::Build;

my $builder = Module::Build->new(
    sign              => 1,
    module_name       => 'Crypt::Image',
    license           => 'perl',
    dist_author       => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from => 'lib/Crypt/Image.pm',
    add_to_cleanup    => [ 'Crypt-Image-*' ],    
    build_requires    => {
        'Test::More'   => 0,
        'Math::Random' => '0.71',
        'POSIX'        => '1.09',
        'GD::Image'    => '2.38',
        'Readonly'     => '1.03',
        'Carp::Always' => '0.10',
        'Mouse'        => '0.93',
    },
);

$builder->create_build_script();