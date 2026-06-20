execute unless loaded 77 64 107 run schedule function pld:beta/chunk/middle/4_6/loaded 2s
execute unless loaded 87 64 117 run schedule function pld:beta/chunk/middle/4_6/loaded 2s
execute if loaded 77 64 107 if loaded 87 64 117 run function pld:beta/chunk/middle/4_6/next
