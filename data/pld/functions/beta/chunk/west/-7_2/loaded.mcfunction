execute unless loaded -106 62 46 run schedule function pld:beta/chunk/west/-7_2/loaded 2s
execute unless loaded -100 52 44 run schedule function pld:beta/chunk/west/-7_2/loaded 2s
execute if loaded -106 62 46 if loaded -100 52 44 run function pld:beta/chunk/west/-7_2/next
