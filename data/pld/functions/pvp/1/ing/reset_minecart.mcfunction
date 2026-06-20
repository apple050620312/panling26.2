tellraw @s[team=attack] {"translate":"pl.info.pvp1_atk_try_to_get_minecart"}
kill @s[team=attack]

execute if entity @s[team=defence] unless entity @e[type=command_block_minecart,tag=pvp1] run function pld:pvp/1/ing/reset_minecart_success
execute if entity @s[team=defence] as @e[type=command_block_minecart,tag=pvp1] at @s unless entity @p[team=defence,distance=..5,limit=2] run function pld:pvp/1/ing/reset_minecart_success

execute if entity @s[team=defence] as @e[type=command_block_minecart,tag=pvp1] at @s if entity @p[team=defence,distance=..5,limit=2] run tellraw @s {"translate":"pl.info.pvp1_def_reset_minecart_resis"}

