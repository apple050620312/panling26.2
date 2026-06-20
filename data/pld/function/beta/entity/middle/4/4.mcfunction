forceload add 77 107 87 117
execute unless loaded 77 63 107 run schedule function pld:beta/entity/middle/4/4 2s
execute unless loaded 87 63 117 run schedule function pld:beta/entity/middle/4/4 2s
#execute unless entity 8efd060d-3380-428f-9cd4-07eeb7d2884a run schedule function pld:beta/entity/middle/4/4 2s
#execute unless entity 1b2c0476-8ada-4f94-bc47-b78821a85a9c run schedule function pld:beta/entity/middle/4/4 2s

execute if loaded 77 63 107 if loaded 87 63 117 run function pld:beta/entity/middle/4/next

#execute if entity 8efd060d-3380-428f-9cd4-07eeb7d2884a if entity 1b2c0476-8ada-4f94-bc47-b78821a85a9c run function pld:beta/entity/middle/4/next
