#区块强加载
forceload add 3313 378
execute unless loaded 3313 118 378 run schedule function pld:beta/entity/shen/3/3 2s
execute if loaded 3313 118 378 run function pld:beta/entity/shen/3/next

#execute unless entity a2a5f7c3-6b95-4e07-a751-f04e5d8c451b run schedule function pld:beta/entity/shen/2/2 2s
#execute unless entity ea09e8e8-184d-4d42-bd6f-a1c052de8876 run schedule function pld:beta/entity/shen/2/2 2s
#execute if entity ea09e8e8-184d-4d42-bd6f-a1c052de8876 if entity a2a5f7c3-6b95-4e07-a751-f04e5d8c451b run function pld:beta/entity/shen/2/next