#区块强加载
forceload add 3276 -249

execute unless loaded 3276 23 -249 run schedule function pld:beta/entity/zhan/4/4 2s
execute if loaded 3276 23 -249 run function pld:beta/entity/zhan/4/next

#execute unless entity b7f00b57-830f-44fb-a12b-bd702b71c309 run schedule function pld:beta/entity/zhan/4/4 2s
#execute if entity b7f00b57-830f-44fb-a12b-bd702b71c309 run function pld:beta/entity/zhan/4/next