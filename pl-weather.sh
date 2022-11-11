#!/bin/bash

perl -sE 'eval $cls; map { say ${\qx~$c http://wttr.in/${_}?format=${query}~} =~ s`¿`\n`gr; sleep 4} split m~,~, $loc' -- -query='%l:+%c+%C¿Temperature:+%t¿Feels+Like:++%f¿Wind:+%w¿Humidity:+%h¿Pressure:+%P¿Precipitation:+%p¿Local+Time:+%Z¿Sunrise:+%S¿Sunset:++%s¿' -loc='Toronto,Penetanguishene,Montreal' -c='curl -sSL' -cls='print qq`[J\033[H\033[J`;'