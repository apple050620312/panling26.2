execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:1}}},{slot:3,components:{custom_data:{canenchant:1}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:1}}},{slot:3,components:{custom_data:{canenchant:2}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:1}}},{slot:3,components:{custom_data:{canenchant:3}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:2}}},{slot:3,components:{custom_data:{canenchant:2}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:2}}},{slot:3,components:{custom_data:{canenchant:3}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,components:{custom_data:{lvl:3}}},{slot:3,components:{custom_data:{canenchant:3}}}]} run function pld:system/dz/enchant/do
#处理锻造台
execute if entity @p[scores={success=1}] run data modify block ~ ~ ~ Items.[{slot:3}] merge value {slot:5}
execute if entity @p[scores={success=1}] run data remove block ~ ~ ~ Items.[{slot:0}]