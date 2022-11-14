#!/usr/bin

perl -sE 'map { $o = $_; $ogg = s`\.mp3$`.ogg`gr; system $ff =~ s`INPUT(?{$m = qq[\x{27}$o\x{27}]})|OUTPUT(?{$m = qq[\x{27}$ogg\x{27}]})`$m`ger } glob(q[*.mp3])' -- -ff='ffmpeg -i INPUT -vn -ar 44100 -ac 2 -b:a 64k OUTPUT'