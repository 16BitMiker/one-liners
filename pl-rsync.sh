#!/usr/bin

perl -se 'map { print qq[\L$_\E> ]; chomp($in = <STDIN>); $db->{$_} = $in } qw[SRCE DEST]; system($cpr =~ s`SRCE|DEST`$db->{$&}`ger);' -- -cpr="rsync --recursive --times --perms --links --progress --append --rsh=ssh 'SRCE' 'DEST'"