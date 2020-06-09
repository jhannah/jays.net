#!/usr/bin/perl

use CGI;
my $q = CGI->new;
my $default_entries = "Jay/3\nGhost/2";
my $entries = $q->param('entries') // $default_entries;

header();
draw_a_winner();
footer();


exit;


sub draw_a_winner {
  return unless $q->param('go');
  my @lines = split /[\r\n]+/, $entries;
  my $total_tickets;
  my @all_tickets;
  foreach my $line (@lines) {
    chomp $line;
    my ($name, $count) = (split m#/#, $line);
    $total_tickets += $count;
    for (0..$count) {
      push @all_tickets, $name;
    }
  }
  print "$total_tickets total tickets<br/>\n";
  my $selection = int(rand($total_tickets));
  print "I randomly chose ticket " . ($selection + 1) . ".<br/>\n";
  my $winner = $all_tickets[$selection];
  print "That makes $winner the winner.<br/>\n";
  
}



sub header {
  print <<EOT;
Content-type: text/html

<html>
<form method="POST">
<textarea name="entries" rows=6>
$entries
</textarea>
<br/>
<input type="submit" name="go" value="Pick a winner">
</form>
EOT
}

sub footer {
  print <<EOT;
<br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
<a href="https://github.com/jhannah/jays.net/blob/master/raffle.pl">Source code</a>
</html>
EOT
}

