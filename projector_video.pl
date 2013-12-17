#!/usr/bin/perl
# ------------------------------------------------------------
# projector_video.pl
# ------------------------------------------------------------
use feature qw{say} ;
use utf8 ;
use Net::PJLink qw{ :RESPONSES } ;

my $pass = 'admin' ;
my $projectors = [ '192.168.1.7' ] ;
my $prj = Net::PJLink->new( host => $projectors , keep_alive => 1 ) ;
$prj->set_auth_password( $pass ) ;
$prj->set_input(INPUT_VIDEO,1) ;
exit;
