#!/usr/local/bin/perl
use Tk;
#main window
my $mw = new MainWindow;

#Making a text area
my $txt = $mw -> Scrolled('Text', -width=>50, -scrollbars=>'e') -> pack();

#declare that there is a menu
my $mbar = $mw -> Menu();
$mw -> configure(-menu => $mbar);

#The Main Buttons
my $file = $mbar -> cascade(-label=>"File", -underline=>0, -tearoff => 0);
my $others = $mbar -> cascade(-label=>"Others", -underline=>0, -tearoff=>0);
my $help = $mbar -> cascade(-label=>"Help", -underline=>0, -tearoff=>0);

## File Menu ##
my $insert = $others -> cascade(-label=>"Insert", -underline=>0, -tearoff=>0);
$insert -> command(-label=>"Name",
    -command=>sub{ $txt->insert('end', "Name : Binny V A\n"); });
$insert -> command(-label=>"Website", -command=>sub{
    $txt->insert('end', "Website : http://www.bing.com\n"); });
$insert -> command(-label=>"Email", -command=>sub{
    $txt->insert('end', "Email: myemail\@gmail.com");});
$others -> command(-label => "insert all", -underline=>7,
    -command=>sub{ $txt->insert('end', "name: binny, website, email");});

