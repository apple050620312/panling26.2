#区块强加载
forceload add 3206 867

execute unless loaded 3206 85 867 run schedule function pld:beta/entity/xian/1/1 2s
execute if loaded 3206 85 867 run function pld:beta/entity/xian/1/next

#execute unless entity 24ab94bc-26a1-42c7-a2b6-dd34aab0e071 run schedule function pld:beta/entity/xian/1/1 2s
#execute unless entity 4b39ede6-12bc-4821-a005-8d919cde8342 run schedule function pld:beta/entity/xian/1/1 2s

#execute if entity 24ab94bc-26a1-42c7-a2b6-dd34aab0e071 if entity 4b39ede6-12bc-4821-a005-8d919cde8342 run function pld:beta/entity/xian/1/next

