#!/usr/bin/perl

# $Id: hours.pl 11 2008-01-15 21:31:35Z jhannah $ 
# http://jays.net

use strict;
use FileHandle;
use IO::File;
use DBD::SQLite;
use Date::Calc qw( Date_to_Text );

my $dbh = DBI->connect("dbi:SQLite:dbname=hours.db","","");

my $omni = FileHandle->new;
$omni->open(">omni.html");
my $clab = FileHandle->new;
$clab->open(">clab.html");
my $other = FileHandle->new;
$other->open(">other.html");

print $omni <<EOT;
<h1>Jay Hannah - Omni Hotels</h1>
EOT

print $clab <<EOT;
<h1>Jay Hannah - CLAB</h1>
EOT

print $other <<EOT;
<h1>Jay Hannah - Other</h1>
EOT

sth_to_html("select * from hours where project like 'Omni %' order by date desc", $omni);
sth_to_html("select * from hours where project = 'CLAB' order by date desc", $clab);
sth_to_html("select * from hours where project != 'CLAB' and project not like 'Omni %' order by date desc", $other);


for ($omni, $clab, $other) {
   print $_ <<EOT;
</table>
EOT
}


$dbh->disconnect;
exit;



# ----------
#  END MAIN
# ----------

sub sth_to_html {
   my ($strsql, $fh) = @_;

   my $header = <<EOT;
<table border=1>
<tr><th>Date</th><th>Project</th><th>Task</th><th>Hours</th><th>Notes</th></tr>
EOT
   print $fh $header;

   my $sth = $dbh->prepare($strsql);
   $sth->execute;
   my (@row, $lastweek, %stats_for_week);
   while (@row = $sth->fetchrow) {
      my $week = $row[1];
      $row[5] = sprintf("%0.1f", $row[5]);

      # Check to see if the week has changed...
      if ($lastweek && $week ne $lastweek) {
         stats_for_week_to_html(\%stats_for_week, $fh);
         undef %stats_for_week;
         print $fh $header;
      }
      $lastweek = $week;

      $stats_for_week{"$row[3] - $row[4]"} += $row[5];

      my ($y, $m, $d) = ($row[0] =~ /(\d\d\d\d)(\d\d)(\d\d)/);
      my $date = Date_to_Text($y, $m, $d);
      $date =~ s/\-\d\d\d\d$//; 
      print $fh <<EOT;
<tr>
   <td><nobr>$date</nobr></td>
   <td><nobr>$row[3]</nobr></td>
   <td><nobr>$row[4]</nobr></td>
   <td>$row[5]</td>
   <td>$row[6]</td>
</tr>
EOT
   }
   $sth->finish;
}

sub stats_for_week_to_html {
   my ($statsref, $fh) = @_;
   my %stats = %$statsref;
   my $grandtotal;
   foreach my $task (keys %stats) {
      print $fh <<EOT;
<tr><td></td><th colspan=2><nobr>$task</nobr></th><th>$stats{$task}</th></tr>
EOT
      $grandtotal += $stats{$task};
   }
  print $fh <<EOT;
<tr><td></td><th colspan=2 align=right>Week Total</th><th>$grandtotal</th></tr>
EOT
   print $fh "</table><br><br>\n\n";
}



