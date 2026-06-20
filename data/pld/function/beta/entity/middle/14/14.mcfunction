#区块强加载
forceload add 170 192
#execute unless entity 6c1d408b-85cd-48ce-b099-b972cfecc3eb run schedule function pld:beta/entity/middle/14/14 2s


execute unless loaded 170 54 192 run schedule function pld:beta/entity/middle/14/14 2s
execute if loaded 170 54 192 run function pld:beta/entity/middle/14/next

#execute if entity 6c1d408b-85cd-48ce-b099-b972cfecc3eb run function pld:beta/entity/middle/14/next

