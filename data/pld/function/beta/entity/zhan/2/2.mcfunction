#区块强加载
forceload add 3264 -264

execute unless loaded 3264 19 -264 run schedule function pld:beta/entity/zhan/2/2 2s
execute if loaded 3264 19 -264 run function pld:beta/entity/zhan/2/next

#execute unless entity 341550ce-ccc3-4b4e-9f01-b61b342128ed run schedule function pld:beta/entity/zhan/2/2 2s
#execute unless entity 39e1425e-a9f4-4d1a-a2bf-668221c9d700 run schedule function pld:beta/entity/zhan/2/2 2s
#execute if entity 341550ce-ccc3-4b4e-9f01-b61b342128ed if entity 39e1425e-a9f4-4d1a-a2bf-668221c9d700 run function pld:beta/entity/zhan/2/next