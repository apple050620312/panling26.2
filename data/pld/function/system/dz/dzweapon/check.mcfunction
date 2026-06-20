#配方检查
scoreboard players set #system dzoutput -1
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:phantom_membrane",Count:1b,tag:{id:"panling:weapon_core_processed"}}]} run function #pld:dzweapon_recipes

execute unless score #system dzoutput matches -1 unless data block ~ ~ ~ {Items:[{Slot:6b,tag:{type:1}}]} run function pld:system/dz/dzweapon/main
execute unless score #system dzoutput matches -1 if data block ~ ~ ~ {Items:[{Slot:6b,tag:{type:1}}]} run function pld:system/dz/dzweapon/enhance/check

#如果有分解材料
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:3b,tag:{type:1}},{Slot:6b,Count:1b,tag:{id:"panling:convert_material"}}]} unless data block ~ ~ ~ {Items:[{Slot:3b,tag:{id:"panling:furnace3"}}]} run function pld:system/dz/dzweapon/convert/check
#如果有洗炼石
execute unless data block ~ ~ ~ Items[{Slot:5b}] if data block ~ ~ ~ {Items:[{Slot:0b,Count:1b,tag:{id:"panling:refine_stone"}},{Slot:3b,tag:{type:1}}]} run function pld:system/dz/dzweapon/refine/check
