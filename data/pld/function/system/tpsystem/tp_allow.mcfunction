tp @s 236 57 -212
tellraw @s {"translate":"pl.info.tp_mirror_allow"}
advancement grant @s only pld:other/use_tp_stone
scoreboard players set @s mirror_in 2
#scoreboard players set @s tp_cool_tick 6000
#异步
scoreboard players set @s tp_cool_tick 1500

execute as @s[scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed
