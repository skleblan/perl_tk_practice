#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;
$mw -> geometry("800x600");
$mw -> title("Judo Score Board");

my $top_bar = $mw -> Frame(-height=>'100', -relief=>"solid", -background=>"red");
my $bottom_area = $mw -> Frame(-relief=>"solid", -background=>"green");

my $left_blue_area = $bottom_area -> Frame(-relief=>"solid", -background=>"blue", -width=>300);
my $right_white_area = $bottom_area -> Frame(-relief=>"solid", -background=>"white", -width=>200);

$top_bar -> pack(-side=>"top", -fill=>"x");
$bottom_area -> pack(-side=>"top", -fill=>"both");

$left_blue_area -> pack(-side=>"left", -fill=>"y");
$right_white_area -> pack(-side=>"left", -fill=>"y");

MainLoop;
