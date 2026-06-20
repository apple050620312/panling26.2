execute unless loaded 587 28 61 run schedule function pld:beta/chunk/east/36_3/loaded 2s
execute unless loaded 589 29 100 run schedule function pld:beta/chunk/east/36_3/loaded 2s
execute unless loaded 585 28 68 run schedule function pld:beta/chunk/east/36_3/loaded 2s

execute if loaded 587 28 61 if loaded 589 29 100 if loaded 585 28 68 run function pld:beta/chunk/east/36_3/next