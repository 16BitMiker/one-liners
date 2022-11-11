#!/bin/bash

ruby -rcolorize -se 'sel = %q|source destination|.split.map { |txt| print %Q|> #{txt}: |.yellow; gets.chomp }; cmd = %Q|#{$rsync} #{sel[0]} #{sel[1]}|; $n.to_i.times { |n| system cmd; $?.success? ? (puts %Q|>#{cmd}\n> Success! Exiting with code #{wait_thr.value}.\n> Have a nice day!|.green; exit 0) : (puts %Q|\nError code: #{$?.exitstatus}, so retrying (#{n}/#{$n})...|.red; sleep(3+rand(5)); next;); }' -- -rsync='rsync --archive --verbose --update --progress' -n='100'


	