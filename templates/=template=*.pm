package %CLASS%;
#
# Author %USER% <%MAIL%>
# Version 0.1
# Copyright (C) %YEAR% %USER% <%MAIL%>
# Modified On %FDATE%
# Created  %FDATE%
#

use 5.014;
use strict;
use warnings;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '1.00';
require Exporter;
use AutoLoader qw(AUTOLOAD);


sub new {
    my $class = shift;
    my $self = {};

     %HERE%

    return bless($self, $class);
}


1;
