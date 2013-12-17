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
$prj->set_power( 0 ) ;
$prj->close_all_connections;
exit;
