#!/usr/bin/perl

# $Id: load.pl 11 2008-01-15 21:31:35Z jhannah $
# http://jays.net

use strict;
use DBD::SQLite;
use IO::File;
use Text::LooseCSV;
use Date::Calc qw( Delta_Days );

# ------------------------
# Known dates in the past from which to calculate my weeks per client
my @friday_in_2006 = (2006, 12, 29);
my @monday_in_2006 = (2006, 12, 25);
# ------------------------

my $dbh = DBI->connect("dbi:SQLite:dbname=hours.db","","", { AutoCommit => 1 });
$dbh->do("delete from hours");

my $fh = new IO::File "hours.txt";
my $f = new Text::LooseCSV($fh);
$f->line_delimiter("\n");
# Throw away the first two header lines.
$f->next_record;
$f->next_record;

my $strsql = <<EOT;
insert into hours (
   year_week, date, staff, project, task, hours, notes
) values (
   ?, ?, ?, ?, ?, ?, ?
)
EOT
my $sth = $dbh->prepare($strsql);

my $cnt;
while (my $lineref = $f->next_record()) {
   if ($lineref == -1) {
      warn("corrupt rec: ", $f->cur_line);
      next;
   }
   my ($date, $staff, $project, $tash, $hours, $notes) = @$lineref;

   # Calculate year_week based on whatever company we're talking about.
   my $week_start = \@monday_in_2006;
   if ($project eq "CLAB") {
      $week_start = \@friday_in_2006;
   }
   my ($m, $d, $y) = split /\//, $date;
   $y = "20$y";
   my $week = int(Delta_Days(@$week_start, $y, $m, $d) / 7);

   $sth->execute($week, "$y$m$d", $staff, $project, $tash, $hours, $notes);
   $cnt++;
}

print "$cnt rows inserted.\n";   


$dbh->disconnect;


__END__
"Timesheet Details -  January 1, 2007 to  April 30, 2007 for ALL STAFF"
"Date","Staff","Project Name","Task Name","Hours","Notes"
"01/07/07","Jay Hannah","Omni Operations Support","Software","0.5","Restart usw3"
"01/08/07","Jay Hannah","Omni Human Resources","Administrators","1","LPARs / DNS meetings"
"01/08/07","Jay Hannah","Omni Human Resources","Programmers","0.5","Programmer test prep"


