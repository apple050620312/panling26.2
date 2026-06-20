execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:1}},{Slot:3b,tag:{canenchant:1}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:1}},{Slot:3b,tag:{canenchant:2}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:1}},{Slot:3b,tag:{canenchant:3}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:2}},{Slot:3b,tag:{canenchant:2}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:2}},{Slot:3b,tag:{canenchant:3}}]} run function pld:system/dz/enchant/do
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,tag:{lvl:3}},{Slot:3b,tag:{canenchant:3}}]} run function pld:system/dz/enchant/do
#处理锻造台
execute if entity @p[scores={success=1}] run data modify block ~ ~ ~ Items.[{Slot:3b}] merge value {Slot:5b}
execute if entity @p[scores={success=1}] run data remove block ~ ~ ~ Items.[{Slot:0b}]