#目标等级为#temp temp
scoreboard players set #temp temp3 0
scoreboard players set #temp temp2 0
#抓取元素数量
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:0b,components:{custom_data:{refined_element:1}}}].Count
#检查元素数量 #元素数量正确即通过
execute if score #temp temp matches 2 if score #temp temp2 matches 1 run scoreboard players set #temp temp3 1
execute if score #temp temp matches 3 if score #temp temp2 matches 2 run scoreboard players set #temp temp3 1
execute if score #temp temp matches 4 if score #temp temp2 matches 8 run scoreboard players set #temp temp3 1
execute if score #temp temp matches 5 if score #temp temp2 matches 20 run scoreboard players set #temp temp3 1
#如果等级为6，则检查神器锻材数量

#判定通过
execute if score #temp temp3 matches 1 run function pld:system/dz/dzslot/main
