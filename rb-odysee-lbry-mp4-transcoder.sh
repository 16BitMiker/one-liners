#!/bin/bash

#          _ _                               _ _         
#    /\/\ (_) | _____ _ __    /\/\   ___  __| (_) __ _   
#   /    \| | |/ / _ \ '__|  /    \ / _ \/ _` | |/ _` |  
#  / /\/\ \ |   <  __/ |    / /\/\ \  __/ (_| | | (_| |  
#  \/    \/_|_|\_\___|_|    \/    \/\___|\__,_|_|\__,_|  
#                                                        
# Ruby one-liner for mp4 video transcoding 
# for use with the odysee and the LBRY platforms. 
# Note: requires the cli app ffmpeg to work.

ruby -rcolorize -se 'vids = []; vids = Dir.glob(%q|*|).grep(%r~#{$regex}~).each_with_index { |v,n| printf %Q|%-2d %s\n|, n, v }; print %q|Choose Video #: |.yellow; $pick = vids[gets.chomp.to_i]; $ff.gsub!(%r~(INPUT)|OUTPUT~) { $1 ? $pick : $pick.gsub(%r~#{$regex}~) { %Q|#{$1}-#{Time.now.to_i}.mp4| } }; puts %Q|> #{$ff}|.green; system $ff' -- -ff='ffmpeg -i INPUT -c:v libx264 -crf 21 -preset faster -pix_fmt yuv420p -maxrate 5000K -bufsize 5000K -vf "scale=if(gte(iw\,ih)\,min(1920\,iw)\,-2):if(lt(iw\,ih)\,min(1920\,ih)\,-2)" -movflags +faststart -c:a aac -b:a 160k OUTPUT' -regex='^([\s\S]+)\.(?:mp4|mov|avi|mkv)$'

#    |\__/,|   (`\
#  _.|o o  |_   ) )
# -(((---(((--------


