#!/usr/bin/perl
# ------------------------------------------------------------
# projector_turn_on.pl
# ------------------------------------------------------------
use feature qw{say} ;
use utf8 ;
use Net::PJLink qw{ :RESPONSES } ;

my $pass = 'admin' ;
my $projectors = [ '192.168.1.7' ] ;
my $prj = Net::PJLink->new( host => $projectors , keep_alive => 1 ) ;
$prj->set_auth_password( $pass ) ;
say POWER_OFF ;
say POWER_ON ;
say POWER_COOLING ;
say POWER_WARMUP ;
say '' ;
say ERR_UAVL_TIME ;
say ERR_PRJT_FAIL ;
say '' ;
say 'x';

