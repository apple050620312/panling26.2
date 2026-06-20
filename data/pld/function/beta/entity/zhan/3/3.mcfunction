#区块强加载
forceload add 3274 -150 3274 -142

execute unless loaded 3274 24 -142 run schedule function pld:beta/entity/zhan/3/3 2s
execute unless loaded 3274 23 -150 run schedule function pld:beta/entity/zhan/3/3 2s
execute if loaded 3274 24 -142 if loaded 3274 23 -150 run function pld:beta/entity/zhan/3/next

#execute unless entity 947f7af8-2021-4e7d-9e95-d63608539dcc run schedule function pld:beta/entity/zhan/3/3 2s
#execute unless entity 1c0a2dcd-f448-4f80-a4f1-9bcacd659265 run schedule function pld:beta/entity/zhan/3/3 2s

#execute if entity 947f7af8-2021-4e7d-9e95-d63608539dcc if entity 1c0a2dcd-f448-4f80-a4f1-9bcacd659265 run function pld:beta/entity/zhan/3/next 