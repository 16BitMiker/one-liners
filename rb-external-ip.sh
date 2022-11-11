#!/bin/bash

ruby -se '%w[6 4].each { cmd = $ip.sub(%r~N~,_1); puts %x|#{system cmd}|; sleep 1 }' -- -ip='curl -sSL "https://apiN.ipify.org?format=text"'

