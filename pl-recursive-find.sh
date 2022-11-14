#!/usr/bin

(export FILE="dir_$(date +%s).txt"; echo "> $FILE"; perl -E 'push @dirs, q[.]; D: { $d = pop @dirs; say $d; map { -d ? push @dirs, $_ : say qq[\t$_]; } glob(qq[$d/*]); goto D if @dirs }' > $FILE)