#完成跑酷
#成就
advancement grant @s only pld:other/parkour_middle_finish

execute as @s[scores={parkour_middle_time=..12000}] run advancement grant @s only pld:other/parkour_middle_time
execute as @s[scores={parkour_middle_skill=1}] run advancement grant @s only pld:other/parkour_middle_skill


#结算时间
scoreboard players operation @s parkour_middle_20 = @s parkour_middle_time
scoreboard players operation @s parkour_middle_20 /= 20 int

#给予奖励
tellraw @s {"translate":"pl.info.parkour_middle.finish"}
tellraw @a [{"translate":"pl.info.parkour_middle.finish_announce.a"},{"selector":"@s","color": "yellow"},{"translate":"pl.info.parkour_middle.finish_announce.b"},{"score":{"name": "@s","objective": "parkour_middle_20"},"color":"white"},{"translate":"pl.info.parkour_middle.finish_announce.c"}]

#退出跑酷状态
scoreboard players set @s parkour_middle_in 0
