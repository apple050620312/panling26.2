#当前强化等级 #temp temp  enhance_lvl
#最大强化等级 #temp temp2 enhance_lvl_max

#如果enhance_lvl 大于等于1 则需要统计是否已有某个词条

#幸运玩家 @p[tag=enhance_check]

#获得当前强化等级并覆盖
execute store result block ~ ~ ~ Items[{Slot:6b}].tag.enhance_lvl int 1.0 run scoreboard players add #temp temp 1

#按照已有id赋值
execute as @p[tag=enhance_check] run function pld:system/dz/dzweapon/enhance/check_id

#根据武器数据 选择池子进行随机
#进行随机 @p[tag=enhance_check] dzrare dzlimit dzbranch
execute if block ~-3 ~2 ~ chest positioned ~-3 ~2 ~ run function pld:system/dz/dzweapon/enhance/loot

#随机结果 #system temp 记录随机值的id
#查表，进行位置合并
function pld:system/dz/dzweapon/enhance/list

#system temp 合并对应标签的id
execute store result storage pld:system Temp2 int 1.0 run scoreboard players get #system temp
execute if score #temp temp matches 1 run data modify block ~ ~ ~ Items[{Slot:6b}].tag.enhance1_id set from storage pld:system Temp2
execute if score #temp temp matches 2 run data modify block ~ ~ ~ Items[{Slot:6b}].tag.enhance2_id set from storage pld:system Temp2
execute if score #temp temp matches 3 run data modify block ~ ~ ~ Items[{Slot:6b}].tag.enhance3_id set from storage pld:system Temp2
execute if score #temp temp matches 4 run data modify block ~ ~ ~ Items[{Slot:6b}].tag.enhance4_id set from storage pld:system Temp2

#现在要编辑的文本位置
#max=now+1 -5 temp2-temp=0
#max=now+2 -6 temp2-temp=1
#max=now+3 -7 temp2-temp=2
#max=now+4 -8 temp2-temp=3
scoreboard players operation #temp temp2 -= #temp temp

execute if score #temp temp2 matches 0 run function pld:system/dz/dzweapon/enhance/modify/0
execute if score #temp temp2 matches 1 run function pld:system/dz/dzweapon/enhance/modify/1
execute if score #temp temp2 matches 2 run function pld:system/dz/dzweapon/enhance/modify/2
execute if score #temp temp2 matches 3 run function pld:system/dz/dzweapon/enhance/modify/3

#炼丹师武器处理 #system temp 29 30 31 32
execute if score #system temp matches 29..32 if score @p[tag=enhance_check] dzlimit matches 2 run function pld:system/dz/dzweapon/enhance/limit2_enhance

#武器名称处理
data modify storage pld:system dzTemp set from block ~ ~ ~ Items.[{Slot:6b}].tag.id
execute if block ~-3 ~2 ~ chest positioned ~-3 ~3 ~ run function pld:system/dz/dzweapon/enhance/name/summon
execute if block ~-3 ~4 ~ oak_sign run data modify block ~ ~ ~ Items.[{Slot:6b}].tag.display.Name set from block ~-3 ~4 ~ front_text.messages[0]
execute if block ~-3 ~4 ~ oak_sign run setblock ~-3 ~4 ~ air

#把0、3位置清理掉
data remove block ~ ~ ~ Items.[{Slot:0b}]
data remove block ~ ~ ~ Items.[{Slot:3b}]
#把物品丢到5
data modify block ~ ~ ~ Items[{Slot:6b}].Slot set value 5b

#关闭物品的激活
execute unless score @p[tag=enhance_check] dzlimit matches 2 run function pld:system/dz/dzweapon/lock_do

#返回成功值
execute store result score @p dzsuccess run data get block ~ ~ ~ Items[0].Slot 
