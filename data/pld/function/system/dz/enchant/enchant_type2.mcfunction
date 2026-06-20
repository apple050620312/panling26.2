execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:1}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:1}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:1}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:2}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:2}}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,components:{"minecraft:custom_data":{lvl:3}}}]} run function pld:system/dz/enchant/do

#处理锻造台
execute if entity @p[scores={success=1}] run data modify block ~ ~ ~ Items.[{Slot:3b}] merge value {Slot:5b}
execute if entity @p[scores={success=1}] run data remove block ~ ~ ~ Items.[{Slot:0b}]