execute unless loaded -119 41 138 run schedule function pld:beta/chunk/west/-8_8/loaded 2s
execute unless loaded -112 29 132 run schedule function pld:beta/chunk/west/-8_8/loaded 2s
execute if loaded -119 41 138 if loaded -112 29 132 run function pld:beta/chunk/west/-8_8/next
