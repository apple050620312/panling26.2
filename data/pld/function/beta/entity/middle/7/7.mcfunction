#区块强加载
forceload add 82 181
execute unless loaded 82 63 181 run schedule function pld:beta/entity/middle/7/7 2s
#5 11
execute unless entity 07788982-fa52-442d-bddb-2403a2bca0b8 run schedule function pld:beta/entity/middle/7/7 2s
execute unless entity 759a72cb-d272-4f32-87ec-48b226af7562 run schedule function pld:beta/entity/middle/7/7 2s


execute if loaded 82 63 181 run function pld:beta/entity/middle/7/next
#execute if entity 07788982-fa52-442d-bddb-2403a2bca0b8 if entity 759a72cb-d272-4f32-87ec-48b226af7562 run function pld:beta/entity/middle/7/next
