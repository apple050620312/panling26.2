#追踪等级对应id
execute if data block ~ ~ ~ Items[{slot:6}].tag.enhance1_id store result score #temp temp3 run data get block ~ ~ ~ Items[{slot:6}].tag.enhance1_id
#根据#temp temp3 给tag
function pld:system/dz/dzweapon/enhance/tags

execute if data block ~ ~ ~ Items[{slot:6}].tag.enhance2_id store result score #temp temp3 run data get block ~ ~ ~ Items[{slot:6}].tag.enhance2_id
#根据#temp temp3 给tag
function pld:system/dz/dzweapon/enhance/tags

execute if data block ~ ~ ~ Items[{slot:6}].tag.enhance3_id store result score #temp temp3 run data get block ~ ~ ~ Items[{slot:6}].tag.enhance3_id
#根据#temp temp3 给tag
function pld:system/dz/dzweapon/enhance/tags

execute if data block ~ ~ ~ Items[{slot:6}].tag.enhance4_id store result score #temp temp3 run data get block ~ ~ ~ Items[{slot:6}].tag.enhance4_id
#根据#temp temp3 给tag
function pld:system/dz/dzweapon/enhance/tags

#根据#temp temp 赋予强化等级标记
scoreboard players operation @s dzenhance_lvl = #temp temp