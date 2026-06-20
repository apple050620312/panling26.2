execute unless loaded 60 48 84 run schedule function pld:beta/chunk/middle/3_5/loaded 2s
execute unless loaded 64 48 88 run schedule function pld:beta/chunk/middle/3_5/loaded 2s
execute if loaded 60 48 84 if loaded 64 48 88 run function pld:beta/chunk/middle/3_5/next
