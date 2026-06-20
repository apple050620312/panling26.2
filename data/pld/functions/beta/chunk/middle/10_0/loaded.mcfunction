
execute unless loaded 187 48 2 run schedule function pld:beta/chunk/middle/10_0/loaded 2s
execute unless loaded 171 48 2 run schedule function pld:beta/chunk/middle/10_0/loaded 2s
execute if loaded 187 48 2 if loaded 171 48 2 run function pld:beta/chunk/middle/10_0/next
