#区块强加载
forceload add 266 148
#execute unless entity d4cfeb0c-dcc9-40ae-aa93-60e5fc00f584 run schedule function pld:beta/entity/middle/16/16 2s

execute unless loaded 266 54 148 run schedule function pld:beta/entity/middle/16/16 2s
execute if loaded 266 54 148 run function pld:beta/entity/middle/16/next


#execute if entity d4cfeb0c-dcc9-40ae-aa93-60e5fc00f584 run function pld:beta/entity/middle/16/next
