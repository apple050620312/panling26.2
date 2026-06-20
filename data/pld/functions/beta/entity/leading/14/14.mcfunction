#区块强加载
forceload add 1300 20 1320 60
#81 1
execute unless loaded 1300 75 20 run schedule function pld:beta/entity/leading/14/14 2s
#81 2
execute unless loaded 1304 75 38 run schedule function pld:beta/entity/leading/14/14 2s
#81 3
execute unless loaded 1306 75 52 run schedule function pld:beta/entity/leading/14/14 2s
#82 1
execute unless loaded 1316 75 27 run schedule function pld:beta/entity/leading/14/14 2s
#82 2
execute unless loaded 1315 75 42 run schedule function pld:beta/entity/leading/14/14 2s
#82 3
execute unless loaded 1316 75 50 run schedule function pld:beta/entity/leading/14/14 2s
#next
execute if loaded 1300 75 20 if loaded 1304 75 38 if loaded 1306 75 52 if loaded 1316 75 27 if loaded 1315 75 42 if loaded 1316 75 50 run function pld:beta/entity/leading/14/next