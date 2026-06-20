#重置裝備
execute as @s[team=attack] run function pld:pvp/3/ing/atk/equipment_reset
execute as @s[team=defence] run function pld:pvp/3/ing/def/equipment_reset

#重置击杀数目与悬赏标识
advancement revoke @s only pld:system/pvp/rewarded
scoreboard players set @s pvp_killc_g 0
scoreboard players set @s pvp_killc_r 0

#加分
scoreboard players add @s pvp_point 4

#双方玩家数量不等，给予分数增幅
execute if score #system pvp_pl_stat matches -1 run scoreboard players add @s[team=defence] pvp_point 2
execute if score #system pvp_pl_stat matches -2 run scoreboard players add @s[team=defence] pvp_point 4
execute if score #system pvp_pl_stat matches -3 run scoreboard players add @s[team=defence] pvp_point 8

execute if score #system pvp_pl_stat matches 1 run scoreboard players add @s[team=attack] pvp_point 2
execute if score #system pvp_pl_stat matches 2 run scoreboard players add @s[team=attack] pvp_point 4
execute if score #system pvp_pl_stat matches 3 run scoreboard players add @s[team=attack] pvp_point 8

execute if score #system pvp_pl_stat matches ..-1 run tellraw @s[team=defence] {"translate":"pl.info.ex_score_1"}
execute if score #system pvp_pl_stat matches 1.. run tellraw @s[team=attack] {"translate":"pl.info.ex_score_1"}

#可购买道具
scoreboard players set @s inbuy_area 1

#重置站点奖励
scoreboard players set @s[team=defence] pvp3_defense_reward 2

#死亡cd
#scoreboard players set @s pvp_relife_tick 300
#异步
scoreboard players set @s pvp_relife_tick 75

#重置分数奖励
scoreboard players set @s pvp_point_get 0

#重置死亡判定
scoreboard players reset @s player_death

