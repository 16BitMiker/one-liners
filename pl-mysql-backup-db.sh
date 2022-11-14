#!/usr/bin

perl -se 'map { print qq[\L$_\E> ]; chomp($in = <STDIN>); $db->{$_} = $in } qw[USER PASS DATABASE]; $db->{TIME} = time;  system($sql =~ s`USER|PASS|DATABASE|TIME`$db->{$&}`ger)' -- -sql="sudo mysqldump --user='USER' --password='PASS' DATABASE > TIME_DATABASE.sql"