execute unless loaded 100 48 157 run schedule function pld:beta/chunk/middle/6_9/loaded 2s
execute unless loaded 100 48 165 run schedule function pld:beta/chunk/middle/6_9/loaded 2s
execute if loaded 100 48 157 if loaded 100 48 165 run function pld:beta/chunk/middle/6_9/next
