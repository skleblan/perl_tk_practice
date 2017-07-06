#!/usr/bin/perl

use Tk;

my $mw = new MainWindow;
$mw->geometry("800x600");
$mw->title("Inventor Rename Reborn");

my $msg_frame = $mw -> Frame(-background=>'snow1', -borderwidth=>3); #will be the left half
my $ctrls_frame = $mw -> Frame(-background=>'snow2', -borderwidth=>3); #will be the right half

#$ctrls_frame -> grid(-row=>1, -column=>2);
#$msg_frame -> grid(-row=>1, -column=>2);

$ctrls_frame -> pack(-ipadx=>50, -side=>"left", -fill=>"y");
$msg_frame -> pack(-ipadx=>50, -side=>"right", -fill=>"y");
MainLoop;

$mw -> messageBox(-message=>"you should add some physical controls to help define where the frames actually are");
