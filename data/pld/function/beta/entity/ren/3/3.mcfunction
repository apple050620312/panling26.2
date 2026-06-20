#区块强加载
forceload add 1656 169

execute unless loaded 1656 155 169 run schedule function pld:beta/entity/ren/3/3 2s
execute if loaded 1656 155 169 run function pld:beta/entity/ren/3/next
#execute unless entity 68b6b73a-f79c-49ee-a8ea-471911f553c6 run schedule function pld:beta/entity/ren/3/3 2s
#execute if entity 68b6b73a-f79c-49ee-a8ea-471911f553c6 run function pld:beta/entity/ren/3/next 