#获取防具等级 #temp temp
execute store result score #temp temp run data get block ~ ~ ~ Items[{Slot:6b}].tag.rare

#获取锻造核心等级
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:3b}].tag.level

#锻造等级=防具等级 或 锻造等级=防具等级+1 #temp temp3 为1 条件通过
scoreboard players set #temp temp3 0
execute if score #temp temp = #temp temp2 run scoreboard players set #temp temp3 1
execute unless score #temp temp3 matches 1 run scoreboard players add #temp temp 1
execute if score #temp temp = #temp temp2 run scoreboard players set #temp temp3 1

#检查元素数量 目标等级为#temp temp
execute if score #temp temp3 matches 1 run function pld:system/dz/dzslot/element_check

#锻造返回值
execute store result score @p dzsuccess run data get block ~ ~ ~ Items[0].Slot
