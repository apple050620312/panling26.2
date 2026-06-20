#区块强加载
forceload add 3258 -252

execute unless loaded 3258 22 -252 run schedule function pld:beta/entity/zhan/1/1 2s
execute if loaded 3258 22 -252 run function pld:beta/entity/zhan/1/next

#execute unless entity 3fe12ba1-1106-4119-a21e-ee733945c2f7 run schedule function pld:beta/entity/zhan/1/1 2s
#execute if entity 3fe12ba1-1106-4119-a21e-ee733945c2f7 run function pld:beta/entity/zhan/1/next