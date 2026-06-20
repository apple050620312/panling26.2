forceload add 52 37 51 24
#3 2
execute unless loaded 52 7 37 run schedule function pld:beta/entity/middle/18/18 2s
#3 1
execute unless loaded 52 7 24 run schedule function pld:beta/entity/middle/18/18 2s
execute if loaded 52 7 24 if loaded 52 7 37 run function pld:beta/entity/middle/18/next

#execute unless entity c32a95cc-ae59-434f-a2e5-f6fa92c1b67f run schedule function pld:beta/entity/middle/18/18 2s
#execute unless entity 7e77e1f2-f886-474d-bb8d-45e793ea9933 run schedule function pld:beta/entity/middle/18/18 2s
#execute if entity c32a95cc-ae59-434f-a2e5-f6fa92c1b67f if entity 7e77e1f2-f886-474d-bb8d-45e793ea9933 run function pld:beta/entity/middle/18/next
