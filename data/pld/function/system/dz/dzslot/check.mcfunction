#核心处是核心、部位材料处是裝備
execute unless data block ~ ~ ~ Items[{slot:5}] if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,id:"minecraft:iron_nugget",count:1,components:{custom_data:{id:"panling:armor_core_processed"}}},{slot:6,count:1,components:{custom_data:{is_armor:1}}}]} run function pld:system/dz/dzslot/lvl_check


