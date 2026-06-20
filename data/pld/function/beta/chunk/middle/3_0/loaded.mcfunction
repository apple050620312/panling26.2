execute unless loaded 54 7 18 run schedule function pld:beta/chunk/middle/3_0/loaded 2s
execute unless loaded 60 44 34 run schedule function pld:beta/chunk/middle/3_0/loaded 2s
execute if loaded 54 7 18 if loaded 60 44 34 run function pld:beta/chunk/middle/3_0/next
