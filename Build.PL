use 5.006;

# On some platforms (*ahem*, MacPerl 5.6.1) "use lib qw(lib);" doesn't
# find the local "lib" directory, so we use File::Spec to do it properly.
use File::Spec 0.82;
use lib File::Spec->catdir('lib');          # use our self to install

use Module::Build::Tiny;

Build_PL(@ARGV);
