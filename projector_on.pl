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
$prj->set_power( 1 ) ;
$prj->close_all_connections;
exit;


__DATA__

922pm 2014-06-21 
526pm 2013-12-21

crontab:
* 17-21 * * * projector_on_at_sunset.pl
0 0     * * * projector_off.pl

