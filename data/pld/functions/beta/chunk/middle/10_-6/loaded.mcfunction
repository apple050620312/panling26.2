
execute unless loaded 170 49 -85 run schedule function pld:beta/chunk/middle/10_-6/pre 2s
execute unless loaded 188 49 -85 run schedule function pld:beta/chunk/middle/10_-6/pre 2s
execute unless loaded 188 49 -66 run schedule function pld:beta/chunk/middle/10_-6/pre 2s
execute unless loaded 170 49 -66 run schedule function pld:beta/chunk/middle/10_-6/pre 2s

execute if loaded 170 49 -85 if loaded 188 49 -85 if loaded 188 49 -66 if loaded 170 49 -66 run function pld:beta/chunk/middle/10_-6/next
 