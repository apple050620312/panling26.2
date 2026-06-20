#等待复活
execute as @a[team=attack,scores={pvp_relife_tick=0}] run function pld:pvp/2/ing/atk/relife
execute as @a[team=defence,scores={pvp_relife_tick=0}] run function pld:pvp/2/ing/def/relife 
scoreboard players remove @a[scores={pvp_relife_tick=0..}] pvp_relife_tick 1


#玩家离开可购买区域
#妖族，出生点+重生房间内
execute as @a[team=defence] unless entity @s[x=1854,y=114,z=-1871,dx=36,dy=3,dz=2] unless entity @s[x=1867,y=53,z=-1835,dx=6,dy=7,dz=6] run scoreboard players set @s inbuy_area 0
#人族，出生点+重生房间内
execute as @a[team=attack] unless entity @s[x=1868,y=51,z=-1780,dx=6,dy=5,dz=6] unless entity @s[x=1840,y=111,z=-1754,dx=64,dy=4,dz=10] run scoreboard players set @s inbuy_area 0

#妖族，出生点+重生房间内
execute as @a[team=defence] if entity @s[x=1854,y=114,z=-1871,dx=36,dy=3,dz=2] run scoreboard players set @s inbuy_area 1
execute as @a[team=defence] if entity @s[x=1867,y=53,z=-1835,dx=6,dy=7,dz=6] run scoreboard players set @s inbuy_area 1
#人族，出生点+重生房间内
execute as @a[team=attack] if entity @s[x=1868,y=51,z=-1780,dx=6,dy=5,dz=6] run scoreboard players set @s inbuy_area 1
execute as @a[team=attack] if entity @s[x=1840,y=111,z=-1754,dx=64,dy=4,dz=10] run scoreboard players set @s inbuy_area 1

#点数报告
execute as @a[team=attack,scores={inbuy_area=1}] run title @s actionbar [{"translate":"pl.info.now_score1"},{"score":{"name": "@s","objective": "pvp_point"},"color": "gold"},{"translate":"pl.info.now_score2"}] 
execute as @a[team=defence,scores={inbuy_area=1}] run title @s actionbar [{"translate":"pl.info.now_score1"},{"score":{"name": "@s","objective": "pvp_point"},"color": "gold"},{"translate":"pl.info.now_score2"}] 

#势力buff
effect give @a[team=attack] resistance 15 0
effect give @a[team=attack] weakness 15 0
effect clear @a[team=attack,scores={up_bless=1}] weakness

effect give @a[team=defence] speed 15 0
effect give @a[team=defence] jump_boost 15 1


#bossbar
scoreboard players operation #system pvp2_middle = #system pvpevent_all
scoreboard players operation #system pvp2_middle -= #system pvpevent_tick
execute store result bossbar pl:pvp2_time value run scoreboard players get #system pvp2_middle
execute store result bossbar pl:pvp2_kill_tree value run scoreboard players get #system pvp2_kill_tree

#倒计时
function pld:pvp/count_down

#结束判据
#进攻方胜利
execute if score #system pvp2_kill_tree matches 11 run function pld:pvp/2/end/atk/atk_win
#防守方胜利
execute unless score #system pvp2_kill_tree matches 11 if score #system pvpevent_tick matches 0 run function pld:pvp/2/end/def/def_win


#bossbar
execute if score #system pvpevent matches 4 run bossbar set pl:pvp2_time visible true
execute if score #system pvpevent matches 4 run bossbar set pl:pvp2_kill_tree visible true
execute if score #system pvpevent matches 4 run bossbar set pl:pvp2_time players @a[scores={inpvp_area=1}]
execute if score #system pvpevent matches 4 run bossbar set pl:pvp2_kill_tree players @a[scores={inpvp_area=1}]
