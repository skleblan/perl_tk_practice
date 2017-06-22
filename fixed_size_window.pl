#!/usr/local/bin/perl

use Tk;

my $mw = new MainWindow;
$mw -> geometry("400x300");
my $lbl = $mw -> Label(-text=>"How big is the form?") -> pack();
my $lbl2 = $mw-> Label(-text=>"It should be 400x300.") -> pack();

MainLoop;
