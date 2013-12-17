#!/usr/bin/perl
# ------------------------------------------------------------
# projector_check.pl
# ------------------------------------------------------------
use feature qw{say} ;
use utf8 ;
use Net::PJLink qw{ :RESPONSES } ;
use Data::Dumper ;

my $pass = 'admin' ;
my $projectors = [ '192.168.1.7' ] ;
my $prj = Net::PJLink->new( host => $projectors , keep_alive => 1 ) ;
$prj->set_auth_password( $pass ) ;
my $status = $prj->get_status() ;
say Dumper $status ;
$prj->close_all_connections;
exit;
