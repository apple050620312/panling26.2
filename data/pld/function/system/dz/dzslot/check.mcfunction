#核心处是核心、部位材料处是装备
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:iron_nugget",Count:1b,tag:{id:"panling:armor_core_processed"}},{Slot:6b,Count:1b,tag:{is_armor:1}}]} run function pld:system/dz/dzslot/lvl_check


