#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;
$mw->geometry("800x600");
$mw->title("Fixed sidebar with resizeable Main Pane");

my $left_frame = $mw -> Frame(-background=>'red', -width=>100);
my $main_frame = $mw -> Frame(-background=>'blue');

$left_frame -> pack(-side=>"left", -fill=>"y");
$main_frame -> pack(-side=>"left", -fill=>"both");

MainLoop;
