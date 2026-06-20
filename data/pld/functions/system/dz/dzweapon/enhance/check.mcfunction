#强化装备

#选择幸运玩家@p 来配合随机
tag @p add enhance_check

#条件一：武器返回值和被锻造武器一致
# @p[tag=enhance_check] dzoutput → dzrare dzlimit dzbranch
scoreboard players operation #system temp = #system dzoutput

scoreboard players operation @p[tag=enhance_check] dzbranch = #system temp
scoreboard players operation @p[tag=enhance_check] dzbranch %= 10 int

scoreboard players operation #system temp /= 10 int

scoreboard players operation @p[tag=enhance_check] dzlimit = #system temp
scoreboard players operation @p[tag=enhance_check] dzlimit %= 10 int

scoreboard players operation #system temp /= 10 int

scoreboard players operation @p[tag=enhance_check] dzrare = #system temp
scoreboard players operation @p[tag=enhance_check] dzrare %= 10 int

#获取武器数据比对 {Slot:6b,tag:{type:1}}
execute store result score #system dzbranch run data get block ~ ~ ~ Items[{Slot:6b}].tag.branch
execute store result score #system dzlimit run data get block ~ ~ ~ Items[{Slot:6b}].tag.limit
execute store result score #system dzrare run data get block ~ ~ ~ Items[{Slot:6b}].tag.rare

#条件二：可以升级强化
#获取当前强化等级 enhance_lvl
execute store result score #temp temp run data get block ~ ~ ~ Items[{Slot:6b}].tag.enhance_lvl
#获取最大强化等级 enhance_lvl_max
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:6b}].tag.enhance_lvl_max

#通过 
execute if score #temp temp < #temp temp2 if score #system dzbranch = @p[tag=enhance_check] dzbranch if score #system dzlimit = @p[tag=enhance_check] dzlimit if score #system dzrare = @p[tag=enhance_check] dzrare run function pld:system/dz/dzweapon/enhance/main

execute as @p[tag=enhance_check] run function pld:system/dz/dzweapon/enhance/clear_id

tag @a remove enhance_check
