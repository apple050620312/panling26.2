#等待复活
execute as @a[team=attack,scores={pvp_relife_tick=0}] run function pld:pvp/3/ing/atk/relife
execute as @a[team=defence,scores={pvp_relife_tick=0}] run function pld:pvp/3/ing/def/relife 
scoreboard players remove @a[scores={pvp_relife_tick=0..}] pvp_relife_tick 1


#玩家离开可购买区域

#妖族，重生房间内
execute as @a[team=attack] unless entity @s[x=2343,y=213,z=-1805,dx=8,dy=8,dz=8] run scoreboard players set @s inbuy_area 0
#仙族，重生房间内
execute as @a[team=defence] unless entity @s[x=2366,y=213,z=-1805,dx=8,dy=8,dz=8] run scoreboard players set @s inbuy_area 0

#妖族，重生房间内
execute as @a[team=attack] if entity @s[x=2343,y=213,z=-1805,dx=8,dy=8,dz=8] run scoreboard players set @s inbuy_area 1
#仙族，重生房间内
execute as @a[team=defence] if entity @s[x=2366,y=213,z=-1805,dx=8,dy=8,dz=8] run scoreboard players set @s inbuy_area 1

#点数报告
execute as @a[team=attack,scores={inbuy_area=1}] run title @s actionbar [{"translate":"pl.info.now_score1"},{"score":{"name": "@s","objective": "pvp_point"},"color": "gold"},{"translate":"pl.info.now_score2"}] 
execute as @a[team=defence,scores={inbuy_area=1}] run title @s actionbar [{"translate":"pl.info.now_score1"},{"score":{"name": "@s","objective": "pvp_point"},"color": "gold"},{"translate":"pl.info.now_score2"}] 


#bossbar
scoreboard players operation #system pvp3_middle = #system pvpevent_all
scoreboard players operation #system pvp3_middle -= #system pvpevent_tick
execute store result bossbar pl:pvp3_time value run scoreboard players get #system pvp3_middle
execute store result bossbar pl:pvp3_save_count value run scoreboard players get #system pvp3_save_count
execute store result bossbar pl:pvp3_next_save_time value run scoreboard players get #system pvp3_next_save

#势力buff
effect give @a[team=defence] slowness 15 0
effect clear @a[team=defence,scores={up_bless=1}] slowness
execute as @a[team=defence,scores={up_bless=1}] unless predicate pld:effect_check/regeneration run effect give @s regeneration 15 0

effect give @a[team=attack] speed 15 0
effect give @a[team=attack] night_vision 15 0

#倒计时
function pld:pvp/count_down


#结束判据
#进攻方胜利
execute if score #system pvp3_save_count matches 15 run function pld:pvp/3/end/atk/atk_win
#防守方胜利
execute unless score #system pvp3_save_count matches 15 if score #system pvpevent_tick matches 0 run function pld:pvp/3/end/def/def_win

#bossbar
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_time visible true
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_save_count visible true
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_next_save_time visible true
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_time players @a[scores={inpvp_area=1}]
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_save_count players @a[scores={inpvp_area=1}]
execute if score #system pvpevent matches 6 run bossbar set pl:pvp3_next_save_time players @a[scores={inpvp_area=1}]