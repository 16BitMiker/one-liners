#!/usr/bin

perl -M'Term::ANSIColor 2.00 qw(:pushpop)' -MFile::Copy -E 'map { print qq[${_}: ]; chomp($in = <STDIN>); push @sel, $in } qw[File(s) Find Replace Test[y/n]]; map { if (-f) { $o = $_; s`$sel[1]`$sel[2]`ge; say PUSHCOLOR BRIGHT_YELLOW $o, RESET q[ >> ] , PUSHCOLOR BRIGHT_GREEN $_; unless ($sel[3] =~ m`^y(?:es)?$`i) {  move ($o, $_) } print RESET } } glob qq[$sel[0]]'