#核心处是核心、部位材料处是裝備
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:iron_nugget",Count:1b,components:{"minecraft:custom_data":{id:"panling:armor_core_processed"}}}]} run function pld:system/dz/dzslot/lvl_check


