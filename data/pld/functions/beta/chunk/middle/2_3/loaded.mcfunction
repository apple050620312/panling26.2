execute unless loaded 45 44 47 run schedule function pld:beta/chunk/middle/2_3/loaded 2s
execute unless loaded 33 44 52 run schedule function pld:beta/chunk/middle/2_3/loaded 2s
 
execute if loaded 45 44 47 if loaded 33 44 52 run function pld:beta/chunk/middle/2_3/next