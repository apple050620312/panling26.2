#阻止战神族和矿车的碰撞
team modify attack collisionRule pushOwnTeam
team join attack @e[type=command_block_minecart,tag=pvp1]

#等待复活
execute as @a[team=attack,scores={pvp_relife_tick=0}] run function pld:pvp/1/ing/atk/relife
execute as @a[team=defence,scores={pvp_relife_tick=0}] run function pld:pvp/1/ing/def/relife 
scoreboard players remove @a[scores={pvp_relife_tick=0..}] pvp_relife_tick 1





#bossbar
scoreboard players operation #system pvp1_middle = #system pvpevent_all
scoreboard players operation #system pvp1_middle -= #system pvpevent_tick
execute store result bossbar pl:pvp1_time value run scoreboard players get #system pvp1_middle
execute store result bossbar pl:pvp1_delivered value run scoreboard players get #system pvp1_delivered



#势力buff
effect give @a[team=attack] fire_resistance 15
effect give @a[team=attack] invisibility 15
effect give @a[team=attack] night_vision 15
#倒计时
function pld:pvp/count_down

#结束判据
#进攻方胜利
execute if score #system pvp1_delivered matches 2 run function pld:pvp/1/end/def/def_win
#防守方胜利
execute unless score #system pvp1_delivered matches 2 if score #system pvpevent_tick matches 0 run function pld:pvp/1/end/atk/atk_win


#bossbar
execute if score #system pvpevent matches 2 run bossbar set pl:pvp1_time visible true
execute if score #system pvpevent matches 2 run bossbar set pl:pvp1_delivered visible true
execute if score #system pvpevent matches 2 run bossbar set pl:pvp1_time players @a[scores={inpvp_area=1}]
execute if score #system pvpevent matches 2 run bossbar set pl:pvp1_delivered players @a[scores={inpvp_area=1}]


