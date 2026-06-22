#根据#temp temp洗炼对应的词条 {slot:3}

#选择幸运玩家@p 来配合随机
tag @p add enhance_check
#按照已有id赋tag
execute as @p[tag=enhance_check] run function pld:system/dz/dzweapon/refine/check_id

#获取武器数据
execute store result score @p[tag=enhance_check] dzbranch run data get block ~ ~ ~ Items[{slot:3}].tag.branch
execute store result score @p[tag=enhance_check] dzlimit run data get block ~ ~ ~ Items[{slot:3}].tag.limit
execute store result score @p[tag=enhance_check] dzrare run data get block ~ ~ ~ Items[{slot:3}].tag.rare
scoreboard players operation @p[tag=enhance_check] dzenhance_lvl = #temp temp
#根据武器数据 选择池子进行随机
#进行随机 @p[tag=enhance_check] dzrare dzlimit dzbranch dzenhance_lvl
execute if block ~-3 ~2 ~ chest positioned ~-3 ~2 ~ run function pld:system/dz/dzweapon/enhance/loot

#随机结果 #system temp 记录随机值的id
#查表，进行位置合并
function pld:system/dz/dzweapon/enhance/list

#system temp 合并对应标签的id
execute store result storage pld:system Temp2 int 1.0 run scoreboard players get #system temp
execute if score #temp temp matches 1 run data modify block ~ ~ ~ Items[{slot:3}].tag.enhance1_id set from storage pld:system Temp2
execute if score #temp temp matches 2 run data modify block ~ ~ ~ Items[{slot:3}].tag.enhance2_id set from storage pld:system Temp2
execute if score #temp temp matches 3 run data modify block ~ ~ ~ Items[{slot:3}].tag.enhance3_id set from storage pld:system Temp2
execute if score #temp temp matches 4 run data modify block ~ ~ ~ Items[{slot:3}].tag.enhance4_id set from storage pld:system Temp2

#现在要编辑的文本位置
#max=now+1 -5 temp2-temp=0
#max=now+2 -6 temp2-temp=1
#max=now+3 -7 temp2-temp=2
#max=now+4 -8 temp2-temp=3
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{slot:3}].tag.enhance_lvl_max

scoreboard players operation #temp temp2 -= #temp temp

execute if score #temp temp2 matches 0 run function pld:system/dz/dzweapon/refine/modify/0
execute if score #temp temp2 matches 1 run function pld:system/dz/dzweapon/refine/modify/1
execute if score #temp temp2 matches 2 run function pld:system/dz/dzweapon/refine/modify/2
execute if score #temp temp2 matches 3 run function pld:system/dz/dzweapon/refine/modify/3

#炼丹师武器处理 #system temp 29 30 31 32
execute if score #system temp matches 29..32 if score @p[tag=enhance_check] dzlimit matches 2 run function pld:system/dz/dzweapon/refine/limit2_enhance


#把0、3位置清理掉
data remove block ~ ~ ~ Items.[{slot:0}]
#把物品丢到5
data modify block ~ ~ ~ Items[{slot:3}].Slot set value 5b

#关闭物品的激活
execute unless score @p[tag=enhance_check] dzlimit matches 2 run function pld:system/dz/dzweapon/lock_do

#清理id赋tag
execute as @p[tag=enhance_check] run function pld:system/dz/dzweapon/enhance/clear_id
#回收标记tag
tag @a remove enhance_check

tellraw @p {"translate":"pl.refine_success"}
playsound minecraft:block.anvil.use block @a[distance=..5] ~ ~ ~