#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;
$mw -> geometry("800x600");
$mw -> title("Judo Score Board");

my $top_bar = $mw -> Frame(-height=>'100', -relief=>"solid", -background=>"red");
my $bottom_area = $mw -> Frame(-relief=>"solid", -background=>"green");

my $left_blue_area = $bottom_area -> Frame(-relief=>"solid", -background=>"blue", -width=>300);
my $right_white_area = $bottom_area -> Frame(-relief=>"solid", -background=>"white");

$top_bar -> pack(-side=>"top", -fill=>"x");
$bottom_area -> pack(-side=>"top", -fill=>"both", -expand=>1);

$left_blue_area -> pack(-side=>"left", -expand=>1, -fill=>"y");
$right_white_area -> pack(-side=>"right", -expand=>1, -fill=>"both");

MainLoop;
