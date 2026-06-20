#{Slot:0b,Count:1b,tag:{id:"panling:refine_stone"}} lvl
execute store result score #temp temp run data get block ~ ~ ~ Items[{Slot:0b}].tag.lvl

#enhance_lvl判断能不能洗炼 
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:3b}].tag.enhance_lvl

#通过判据
execute if score #temp temp2 >= #temp temp run function pld:system/dz/dzweapon/refine/main
