forceload add 69 170 94 170
execute unless loaded 69 63 170 run schedule function pld:beta/entity/middle/6/6 2s
execute unless loaded 94 63 170 run schedule function pld:beta/entity/middle/6/6 2s
#5 10
#execute unless entity 6342b806-73ed-4783-a4e0-753535fee6d2 run schedule function pld:beta/entity/middle/6/6 2s
#execute unless entity 88c97d81-51c3-41f7-b7e3-01255bb3022e run schedule function pld:beta/entity/middle/6/6 2s
#execute unless entity 252d1970-9401-4f9c-9815-d587cb214346 run schedule function pld:beta/entity/middle/6/6 2s
#4 10
#execute unless entity cd754b4e-9808-4bac-8d3a-a03c94a9cf42 run schedule function pld:beta/entity/middle/6/6 2s
#execute unless entity ff2aefa7-dc02-422d-b1d0-fa0f46e46a18 run schedule function pld:beta/entity/middle/6/6 2s
#execute unless entity 24b2402c-aeff-4b4b-aec9-86b1baeb7ac7 run schedule function pld:beta/entity/middle/6/6 2s


execute if loaded 69 63 170 if loaded 94 63 170 run function pld:beta/entity/middle/6/next

#execute if entity 6342b806-73ed-4783-a4e0-753535fee6d2 if entity 88c97d81-51c3-41f7-b7e3-01255bb3022e if entity 252d1970-9401-4f9c-9815-d587cb214346 if entity cd754b4e-9808-4bac-8d3a-a03c94a9cf42 if entity ff2aefa7-dc02-422d-b1d0-fa0f46e46a18 if entity 24b2402c-aeff-4b4b-aec9-86b1baeb7ac7 run function pld:beta/entity/middle/6/next
