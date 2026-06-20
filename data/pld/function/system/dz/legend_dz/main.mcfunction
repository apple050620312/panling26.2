execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:helmet61"}}}]} run function pld:system/dz/legend_dz/head/61
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:helmet62"}}}]} run function pld:system/dz/legend_dz/head/62
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:helmet63"}}}]} run function pld:system/dz/legend_dz/head/63

execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:chestplate6"}}}]} run function pld:system/dz/legend_dz/chest/61
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:chestplate62"}}}]} run function pld:system/dz/legend_dz/chest/62
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:chestplate63"}}}]} run function pld:system/dz/legend_dz/chest/63

execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:leggings6"}}}]} run function pld:system/dz/legend_dz/legs/61
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:leggings62"}}}]} run function pld:system/dz/legend_dz/legs/62
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:leggings63"}}}]} run function pld:system/dz/legend_dz/legs/63

execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:boots61"}}}]} run function pld:system/dz/legend_dz/feet/61
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:boots62"}}}]} run function pld:system/dz/legend_dz/feet/62
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:boots63"}}}]} run function pld:system/dz/legend_dz/feet/63

execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:sword6"}}}]} run function pld:system/dz/legend_dz/weapon/sword6
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:bow6"}}}]} run function pld:system/dz/legend_dz/weapon/bow6
execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,components:{"minecraft:custom_data":{id:"panling:furnace6"}}}]} run function pld:system/dz/legend_dz/weapon/furnace6

execute store result score @p dzsuccess run data get block ~ ~ ~ Items[0].Slot