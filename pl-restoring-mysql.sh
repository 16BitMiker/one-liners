#!/usr/bin

perl -sE 'map { print qq[${_}> ]; chomp($db->{$_} = <STDIN>) } qw[USER PASS DBNAME DBFILE]; $cmd = $sql =~ s`USER|PASS|DBNAME|DBFILE`$db->{$&}`ger; say $cmd; system $cmd;' -- -sql="mysql -u'USER' –p'PASS' 'DBNAME' < 'DBFILE'"