execute unless loaded 270 39 132 run schedule function pld:beta/chunk/middle/16_8/loaded 2s
execute unless loaded 284 39 141 run schedule function pld:beta/chunk/middle/16_8/loaded 2s
execute unless loaded 295 39 130 run schedule function pld:beta/chunk/middle/16_8/loaded 2s
execute if loaded 270 39 132 if loaded 284 39 141 if loaded 295 39 130 run function pld:beta/chunk/middle/16_8/next

