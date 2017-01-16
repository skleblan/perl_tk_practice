#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;
my $lbl = $mw -> Label(-text=>"Hello World 02") -> pack();
my $btn = $mw -> Button(-text=>"Quit", -command=>\&exit_prog)->pack();

MainLoop;

sub exit_prog
{
  $mw -> messageBox(-message=>"Goodbye");
  exit;
}
