#配方需求 2个位置
execute unless data block ~ ~ ~ Items[{Slot:5b}] store result score #temp temp run data get block ~ ~ ~ Items

execute if score #temp temp matches 2 if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:feather",Count:1b,components:{"minecraft:custom_data":{lvl:3}}}]} run function pld:system/dz/dzfeather/main
execute if score #temp temp matches 2 if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:feather",Count:1b,components:{"minecraft:custom_data":{lvl:4}}}]} run function pld:system/dz/dzfeather/main

scoreboard players reset #temp temp