#区块强加载
forceload add 2652 860
execute unless loaded 2652 98 860 run schedule function pld:beta/entity/yao/1/1 2s
execute if loaded 2652 98 860 run function pld:beta/entity/yao/1/next

#execute unless entity 046ea32d-0f6d-4b2c-a565-4c8bff074a34 run schedule function pld:beta/entity/yao/1/1 2s

#execute if entity 046ea32d-0f6d-4b2c-a565-4c8bff074a34 run function pld:beta/entity/yao/1/next