#!/usr/bin/perl

use Tk;

use strict;
use warnings;

my $count = 0;

my $window = MainWindow->new;
$window->geometry("300x200");
$window->title("Seconds Counter Example");
$window->Label(-textvariable=>\$count)->pack;

$window->repeat(1000, \&my_callback);

MainLoop;

sub my_callback
{
  $count++;
}
