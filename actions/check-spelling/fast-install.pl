#!/usr/bin/env perl

use strict;
use File::Basename;

my $dirname = dirname(__FILE__);
my @shared=grep { m{share/perl} } @INC;
my $dest=$shared[0];

system('/usr/bin/env', 'mkdir', '-p', '-m', '0755', $dest);
system('/usr/bin/env', 'cp', '-R', "$dirname/lib/CheckSpelling", $dest);
