forceload add 48 152 68 152
execute unless loaded 48 63 152 run schedule function pld:beta/entity/middle/3/3 2s
execute unless loaded 68 63 152 run schedule function pld:beta/entity/middle/3/3 2s
#execute unless entity 97c0e07a-ce3c-4763-b62d-e85880d5b46f run schedule function pld:beta/entity/middle/3/3 2s
#execute unless entity 944e24c4-69e6-4dd2-bad9-816c7a3dbc44 run schedule function pld:beta/entity/middle/3/3 2s
#execute unless entity 87de6462-f1a0-41f6-9868-cc62971f80f2 run schedule function pld:beta/entity/middle/3/3 2s

execute if loaded 48 63 152 if loaded 68 63 152 run function pld:beta/entity/middle/3/next

#execute if entity 97c0e07a-ce3c-4763-b62d-e85880d5b46f if entity 944e24c4-69e6-4dd2-bad9-816c7a3dbc44 if entity 87de6462-f1a0-41f6-9868-cc62971f80f2 run function pld:beta/entity/middle/3/next
