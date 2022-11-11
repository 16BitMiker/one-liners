#!/bin/bash

#          _ _                               _ _         
#    /\/\ (_) | _____ _ __    /\/\   ___  __| (_) __ _   
#   /    \| | |/ / _ \ '__|  /    \ / _ \/ _` | |/ _` |  
#  / /\/\ \ |   <  __/ |    / /\/\ \  __/ (_| | | (_| |  
#  \/    \/_|_|\_\___|_|    \/    \/\___|\__,_|_|\__,_|  
#                                                        
# This perl one-liner determines your external ip
# using the service ipify.org and cli app cURL.

perl -E 'map { say qx[curl -sSL https://api${_}.ipify.org?format=text]; sleep 1 } (6,4)'

#     /\_/\           ___
#    = o_o =_______    \ \  
#     __^      __(  \.__) )
# (@)<_____>__(_____)____/

