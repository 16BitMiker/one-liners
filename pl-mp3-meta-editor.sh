#!/usr/bin

perl -sE 'map { $f = qq[\x{27}${_}\x{27}]; say qq[File: $f]; print q[Continue? [y|n]: ]; chomp($hmm = <STDIN>);  if ($hmm =~ m`y(?:es)?`i) { print q[Title: ]; chomp($t = <STDIN>); $go = $cmd =~ s`SONG(?{ $m = qq[\x{27}$t\x{27}] })|ARTIST(?{ $m = qq[\x{27}$art\x{27}] })|ALBUM(?{ $m = qq[\x{27}$alb\x{27}] })|FILE(?{ $m = $f })`$m`ger; system qq[$del $f]; system $go }} glob(q[*.mp3]);' -- -art='16BitMiker' -alb='https://miker.media' -del='id3v2 --delete-all' -cmd="id3v2 --artist "ARTIST" --song "SONG" --album "ALBUM" FILE"