forceload add 1306 58
execute unless loaded 1306 63 58 run schedule function pld:beta/entity/leading/7/7 2s
#execute unless entity 3d0671f2-26f5-4db7-b6b3-fe2bb3d40b49 run schedule function pld:beta/entity/leading/7/7 2s
#execute unless entity 1f2058a0-abd6-4b4d-a4e4-8ebe4c51ce20 run schedule function pld:beta/entity/leading/7/7 2s
execute if loaded 1306 63 58 run function pld:beta/entity/leading/7/next

#execute if entity 3d0671f2-26f5-4db7-b6b3-fe2bb3d40b49 if entity 1f2058a0-abd6-4b4d-a4e4-8ebe4c51ce20 run function pld:beta/entity/leading/7/next
