execute unless loaded 255 49 23 run schedule function pld:beta/chunk/middle/15_1/loaded 2s
execute unless loaded 260 49 23 run schedule function pld:beta/chunk/middle/15_1/loaded 2s
execute if loaded 255 49 23 if loaded 260 49 23 run function pld:beta/chunk/middle/15_1/next

