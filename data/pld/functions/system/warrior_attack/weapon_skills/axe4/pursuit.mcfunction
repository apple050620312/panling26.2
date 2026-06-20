# @e[type=marker,tag=skill_blood] 
#流血等级上升并刷新持续时间  pld:system blooding_temp[0] {damage:0d,lvl:1s,next_tick:5s,remaining_times:25s,uid:0}
data modify storage pld:system blooding_temp[0].remaining_times set value 25s 
execute store result score #temp temp run data get storage pld:system blooding_temp[0].lvl
execute store result storage pld:system blooding_temp[0].lvl short 1 if score #temp temp matches 1..2 run scoreboard players add #temp temp 1

#覆盖回目标
execute as @e[type=marker,tag=skill_blood] run data modify entity @s data.blooding set from storage pld:system blooding_temp
