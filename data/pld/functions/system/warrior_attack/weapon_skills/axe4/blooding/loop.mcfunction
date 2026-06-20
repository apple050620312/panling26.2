#将列表中的第一个进行编辑
#取出流血时间以及总倒计时
execute store result score #temp temp3 run data get storage pld:system blooding_temp[0].next_tick
execute store result score #temp temp4 run data get storage pld:system blooding_temp[0].remaining_times

scoreboard players remove #temp temp3 1
scoreboard players remove #temp temp4 1

#流血cd结束，造成一次伤害
execute if score #temp temp3 matches 0 run function pld:system/warrior_attack/weapon_skills/axe4/blooding/damage
execute if score #temp temp3 matches 0 store result storage pld:system blooding_temp[0].next_tick short 1.0 run scoreboard players get #system weapon_skill_axe4_blooding_next_5ticks
execute if score #temp temp3 matches 1.. store result storage pld:system blooding_temp[0].next_tick short 1 run scoreboard players get #temp temp3
execute if score #temp temp4 matches 0.. store result storage pld:system blooding_temp[0].remaining_times short 1 run scoreboard players get #temp temp4 
#如果时间没结束，则在这个放到temp2

execute if score #temp temp4 matches 0.. run data modify storage pld:system blooding_temp2 prepend from storage pld:system blooding_temp[0]
data remove storage pld:system blooding_temp[0]

#如果有第一个 那么继续循环
execute if data storage pld:system blooding_temp[0] run function pld:system/warrior_attack/weapon_skills/axe4/blooding/loop

