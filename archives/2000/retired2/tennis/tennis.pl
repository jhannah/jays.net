#!/usr/bin/perl

$fb = "<font size=2>";
$fe = "</font>";

print "<table border=1>\n";
print "<tr><th>${fb}Player$fe</th>";
for (my $j = 1; $j < 12; $j++) {
   print "<th>${fb}Wk $j$fe</th>";
}
print "<th>${fb}Final$fe</th></tr>\n";
open(IN, "tennis.txt");
open(OUT, ">tennis2.txt");
open(OUT3, ">tennis3.txt");
while (<IN>) {
   my ($w, $g, $tw, $tg, $p);
   print "<tr><td align=center>$fb";
   @l = split /\|/;
   print join "$fe</td><td align=center>$fb", @l;
   foreach $game (@l) {
      ($w, $g) = ($game =~ /(\d+)\/(\d+)/);
      $tw += $w;
      $tg += $g;
      if ($tg > 0) {
         print OUT sprintf("%0.4f", $tw / $tg * 100);
         print OUT3 $tw;
      } else {
         print OUT "$game";
         print OUT3 "$game";
      }
      print OUT "|";
      print OUT3 "|";
   } 
   $p = sprintf("%.2f", $tw / $tg * 100);
   
   print "</td><td>$fb<b>$p%</b> ($tw/$tg)$fe</td></tr>\n";
   print OUT "\n";
   print OUT3 "\n";
}
print "</table>\n";

close IN;


