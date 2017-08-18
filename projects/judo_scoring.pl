#!/usr/bin/perl

use Tk;

my $mw = MainWindow;
$mw -> geometry("800x600");
$mw -> title("Judo Score Board");

my $top_bar = $mw -> Frame(-height=>'100', -relief=>"solid");
my $bottom_area = $mw -> Frame(-relief=>"solid");

my $left_blue_area = $bottom_area -> Frame(-relief=>"solid", -background=>"blue");
my $right_white_area = $bottom_area -> Frame(-relief=>"solid");

$top_bar -> pack(-side=>"top", -fill=>"x");
$bottom_area -> pack(-side=>"top", -fill=>"both");

$left_blue_area -> grid(-row=>1, -column=>1, -sticky=>"nse");
$right_white_area -> grid(-row=>1, -column=>2, -sticky=>"nsw");

MainLoop;
