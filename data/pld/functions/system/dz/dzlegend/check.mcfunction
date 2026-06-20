#核心处是核心、部位材料处是装备
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:raw_gold",Count:1b,tag:{id:"panling:core_iron_armor_helmet"}},{Slot:6b,Count:1b,tag:{is_armor:1,rare:5,slot:0}},{Slot:0b,Count:16b,tag:{id:"panling:instance1_collection"}}]} run function pld:system/dz/dzlegend/slot/head/check
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:raw_gold",Count:1b,tag:{id:"panling:core_iron_armor_chestplate"}},{Slot:6b,Count:1b,tag:{is_armor:1,rare:5,slot:1}},{Slot:0b,Count:16b,tag:{id:"panling:instance2_collection"}}]} run function pld:system/dz/dzlegend/slot/chest/check
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:raw_gold",Count:1b,tag:{id:"panling:core_iron_armor_leggings"}},{Slot:6b,Count:1b,tag:{is_armor:1,rare:5,slot:2}},{Slot:0b,Count:16b,tag:{id:"panling:instance3_collection"}}]} run function pld:system/dz/dzlegend/slot/legs/check
execute unless data block ~ ~ ~ Items[{Slot:5b}] if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:3b,id:"minecraft:raw_gold",Count:1b,tag:{id:"panling:core_iron_armor_boots"}},{Slot:6b,Count:1b,tag:{is_armor:1,rare:5,slot:3}},{Slot:0b,Count:16b,tag:{id:"panling:instance4_collection"}}]} run function pld:system/dz/dzlegend/slot/feet/check


#如果有洗炼石
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:0b,Count:1b,tag:{id:"panling:refine_stone_legend",slot:0}},{Slot:3b,tag:{rare:6,slot:0}}]} run function pld:system/dz/dzlegend/refine/main
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:0b,Count:1b,tag:{id:"panling:refine_stone_legend",slot:1}},{Slot:3b,tag:{rare:6,slot:1}}]} run function pld:system/dz/dzlegend/refine/main
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:0b,Count:1b,tag:{id:"panling:refine_stone_legend",slot:2}},{Slot:3b,tag:{rare:6,slot:2}}]} run function pld:system/dz/dzlegend/refine/main
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:0b,Count:1b,tag:{id:"panling:refine_stone_legend",slot:3}},{Slot:3b,tag:{rare:6,slot:3}}]} run function pld:system/dz/dzlegend/refine/main

