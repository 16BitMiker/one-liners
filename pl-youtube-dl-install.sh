perl -M'Term::ANSIColor 2.00 qw(:pushpop)' -sE 'map { say PUSHCOLOR BRIGHT_GREEN qq[> $_]; print RESET; system $_ } split m[~], $yt' -- -yt='sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl~sudo chmod a+rx /usr/local/bin/youtube-dl~youtube-dl -U'