execute unless loaded 3202 23 -313 run schedule function pld:beta/chunk/zhan/200_-21/loaded 2s
execute unless loaded 3215 24 -321 run schedule function pld:beta/chunk/zhan/200_-21/loaded 2s
execute if loaded 3202 23 -313 if loaded 3215 24 -321 run function pld:beta/chunk/zhan/200_-21/next
