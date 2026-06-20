
execute unless loaded 171 66 -132 run schedule function pld:beta/chunk/middle/10_-9/loaded 2s
execute unless loaded 187 66 -132 run schedule function pld:beta/chunk/middle/10_-9/loaded 2s
execute unless loaded 179 68 -166 run schedule function pld:beta/chunk/middle/10_-9/loaded 2s
execute unless loaded 185 66 -158 run schedule function pld:beta/chunk/middle/10_-9/loaded 2s
execute unless loaded 172 66 -158 run schedule function pld:beta/chunk/middle/10_-9/loaded 2s

execute if loaded 172 66 -158 if loaded 171 66 -132 if loaded 187 66 -132 if loaded 179 68 -166 if loaded 185 66 -158 run function pld:beta/chunk/middle/10_-9/next
