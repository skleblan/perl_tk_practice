#!/usr/bin/perl

use Tk;
use Tk::Font;

my $blue_ippon_var = 0;
my $blue_wazaari_var = 0;
my $white_ippon_var = 0;
my $white_wazaari_var = 0;

my $mw = new MainWindow;
$mw -> geometry("800x600");
$mw -> title("Judo Score Board");

##############
# FONTS
##############
my $other_font = $mw -> Font(-size=>20);
my $ippon_font = $mw -> Font(-size=>80);
my $label_font = $mw -> Font(-size=>30);

my $top_bar = $mw -> Frame(-height=>'100',
                           -relief=>"solid",
                           #solid: plain line
                           #flat: none, default
                           #groove/ridge are combos of raised and sunken
                           -borderwidth=>3,
                           -background=>"red");
my $bottom_area = $mw -> Frame();

my $left_blue_area = $bottom_area -> Frame(-background=>"blue", -relief=>"solid", -borderwidth=>3);
my $right_white_area = $bottom_area -> Frame(-background=>"white", -relief=>"solid", -borderwidth=>3);

my $blue_lbl = $left_blue_area -> Label(-text=>"Blue", -font=>$label_font, -relief=>"solid", -borderwidth=>1);
my $blue_ippon_lbl = $left_blue_area -> Label(-text=>"Ippon: ");
my $blue_ippon = $left_blue_area -> Label(-textvariable=>\$blue_ippon_var, -font=>$ippon_font);
my $blue_waazari_lbl = $left_blue_area -> Label(-text=>"Wazaari: ");
my $blue_waazari = $left_blue_area -> Label(-textvariable=>\$blue_wazaari_var, -font=>$other_font);
my $blue_shidos_lbl = $left_blue_area -> Label(-text=>"Shidos: ");
my $blue_shidos = $left_blue_area -> Label(-text=>"0", -font=>$other_font);


my $white_lbl = $right_white_area -> Label(-text=>"White", -font=>$label_font, -relief=>"solid", -borderwidth=>1);
my $white_ippon_lbl = $right_white_area -> Label(-text=>"Ippon: ");
my $white_ippon = $right_white_area -> Label(-textvariable=>\$white_ippon_var, -font=>$ippon_font);
my $white_waazari_lbl = $right_white_area -> Label(-text=>"Wazaari: ");
my $white_waazari = $right_white_area -> Label(-textvariable=>\$white_wazaari_var, -font=>$other_font);
my $white_shidos_lbl = $right_white_area -> Label(-text=>"Shidos: ");
my $white_shidos = $right_white_area -> Label(-text=>"0", -font=>$other_font);

############################################
# ARRANGE GEOMETRY
############################################

$top_bar -> pack(-side=>"top", -fill=>"x");
$bottom_area -> pack(-side=>"top", -fill=>"both", -expand=>1);

$left_blue_area -> pack(-side=>"left", -expand=>1, -fill=>"both");
#note: when i actually put something inside the controls, it seemed like
#  they went to 50% and 50% on their own

$blue_lbl -> grid(-columnspan=>4);
$blue_ippon_lbl -> grid($blue_ippon, $blue_waazari_lbl, $blue_waazari, -sticky=>"nsew");
$blue_shidos_lbl -> grid($blue_shidos, -sticky=>"nsew");

$right_white_area -> pack(-side=>"right", -expand=>1, -fill=>"both");

$white_lbl -> grid(-columnspan=>4, -sticky=>"nsew");
$white_ippon_lbl -> grid($white_ippon, $white_waazari_lbl, $white_waazari, -sticky=>"nsew");
$white_shidos_lbl -> grid($white_shidos, -sticky=>"nsew", -columnspan=>2);

MainLoop;
