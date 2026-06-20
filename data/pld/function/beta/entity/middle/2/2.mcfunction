forceload add 81 -76 76 -72
execute unless loaded 81 63 -76 run schedule function pld:beta/entity/middle/2/2 2s
execute unless loaded 76 63 -72 run schedule function pld:beta/entity/middle/2/2 2s
#execute unless entity f3b24b20-4ac0-4380-a568-f4b978a23de8 run schedule function pld:beta/entity/middle/2/2 2s
#execute unless entity f7e23b68-c515-4cd7-8d6b-e6d298c6d72b run schedule function pld:beta/entity/middle/2/2 2s
execute if loaded 81 63 -76 if loaded 76 63 -72 run function pld:beta/entity/middle/2/next

#execute if entity f3b24b20-4ac0-4380-a568-f4b978a23de8 if entity f7e23b68-c515-4cd7-8d6b-e6d298c6d72b run function pld:beta/entity/middle/2/next

