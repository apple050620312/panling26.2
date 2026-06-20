# @e[type=marker,tag=skill_blood] 

#没有本玩家流血，上新的流血
execute as @e[type=marker,tag=skill_blood] run data modify entity @s data.blooding prepend value {damage:0d,lvl:1s,next_tick:5s,remaining_times:25s,uid:0} 

#存入傷害值
scoreboard players operation #temp temp = @s player_2atk
scoreboard players operation #temp temp = attack_damage float2
scoreboard players operation #temp temp2 = #system weapon_skill_axe4_blooding_multiplier
scoreboard players operation #temp temp *= #temp temp2
scoreboard players set #temp temp2 100
scoreboard players operation #temp temp /= #temp temp2

execute as @e[type=marker,tag=skill_blood] store result entity @s data.blooding[0].damage double 0.01 run scoreboard players get #temp temp

scoreboard players operation #temp temp = @s player_uid
#存入玩家
execute as @e[type=marker,tag=skill_blood] store result entity @s data.blooding[0].uid short 1.0 run scoreboard players get #temp temp

#目标陷入流血状态
scoreboard players set @e[tag=warrior_tag] blooded 1

#blooding:[{damage:10d,lvl:1s,next_tick:5s,remaining_times:2s,uid:1}]
#damage:即将造成的流血傷害 lvl：层数 nexttick：下次流血剩余的tick（5tick） remaining_times:流血剩余时间（5ticks）
