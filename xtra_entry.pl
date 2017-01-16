#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;

my $entry_text_out = "";

my $lbl = $mw -> Label(-text=>"Enter your name:")->pack();
my $ent = $mw -> Entry(-textvariable=>\$entry_text_out)->pack();
my $btn = $mw -> Button(-text=>"Press me", -command=>\&btn_press)->pack();

MainLoop;

sub btn_press
{
  $temp_str = "Hello ".$entry_text_out;
  $mw -> messageBox(-message=>$temp_str);
}
