#区块强加载
forceload add 244 179
#execute unless entity cd15d13d-32f7-4135-94a8-f01536d4c846 run schedule function pld:beta/entity/middle/15/15 2s

execute unless loaded 244 54 179 run schedule function pld:beta/entity/middle/15/15 2s
execute if loaded 244 54 179 run function pld:beta/entity/middle/15/next


#execute if entity cd15d13d-32f7-4135-94a8-f01536d4c846 run function pld:beta/entity/middle/15/next

