#区块强加载 5 8 
forceload add 82 133
execute unless loaded 82 63 133 run schedule function pld:beta/entity/middle/5/5 2s
#execute unless entity dc74d365-90df-402f-bbbb-408c440bf559 run schedule function pld:beta/entity/middle/5/5 2s
#execute unless entity f1b8af30-ed0c-4d9a-a1be-31e2c08c076d run schedule function pld:beta/entity/middle/5/5 2s

execute if loaded 82 63 133 run function pld:beta/entity/middle/5/next

#execute if entity dc74d365-90df-402f-bbbb-408c440bf559 if entity f1b8af30-ed0c-4d9a-a1be-31e2c08c076d run function pld:beta/entity/middle/5/next
