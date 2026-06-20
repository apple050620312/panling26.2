#重置裝備
execute as @s[team=attack] run function pld:pvp/1/ing/atk/equipment_reset
execute as @s[team=defence] run function pld:pvp/1/ing/def/equipment_reset

#死亡cd
#scoreboard players set @s[team=attack] pvp_relife_tick 300
#scoreboard players set @s[team=defence] pvp_relife_tick 100
#异步
scoreboard players set @s[team=attack] pvp_relife_tick 75
scoreboard players set @s[team=defence] pvp_relife_tick 25

#重置死亡判定
scoreboard players reset @s player_death

