#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;

my $lbl = $mw -> Label(-text=>"Enter name:") -> pack();
my $entry = $mw -> Entry() -> pack();
my $btn = $mw -> Button(-text=>"Push Me", -command=>\&push_btn);
$btn -> pack();

MainLoop;

sub push_btn
{
  $entry -> insert(0, "Hello, ");
}

