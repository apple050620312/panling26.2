#配方检查
scoreboard players set #system dzoutput -1
execute unless data block ~ ~ ~ Items[{slot:5}] if data block ~ ~ ~ {Items:[{slot:3,id:"minecraft:phantom_membrane",count:1,components:{custom_data:{id:"panling:weapon_core_processed"}}}]} run function #pld:dzweapon_recipes

execute unless score #system dzoutput matches -1 unless data block ~ ~ ~ {Items:[{slot:6,components:{custom_data:{type:1}}}]} run function pld:system/dz/dzweapon/main
execute unless score #system dzoutput matches -1 if data block ~ ~ ~ {Items:[{slot:6,components:{custom_data:{type:1}}}]} run function pld:system/dz/dzweapon/enhance/check

#如果有分解材料
execute unless data block ~ ~ ~ Items[{slot:5}] if data block ~ ~ ~ {Items:[{slot:3,components:{custom_data:{type:1}}},{slot:6,count:1,components:{custom_data:{id:"panling:convert_material"}}}]} unless data block ~ ~ ~ {Items:[{slot:3,components:{custom_data:{id:"panling:furnace3"}}}]} run function pld:system/dz/dzweapon/convert/check
#如果有洗炼石
execute unless data block ~ ~ ~ Items[{slot:5}] if data block ~ ~ ~ {Items:[{slot:0,count:1,components:{custom_data:{id:"panling:refine_stone"}}},{slot:3,components:{custom_data:{type:1}}}]} run function pld:system/dz/dzweapon/refine/check
