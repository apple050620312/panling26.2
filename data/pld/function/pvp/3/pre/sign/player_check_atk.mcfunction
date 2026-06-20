execute unless entity @s[scores={racefriend1=0..}] run tellraw @s {"translate":"pl.pvp.info.pvp3.atk_friend_not_enough"}
execute if entity @s[scores={racefriend1=0..}] unless entity @s[level=10..] run tellraw @s {"translate":"pl.pvp.info.pvp3.atk_lvl_not_enough"}
execute if entity @s[scores={racefriend1=0..},level=10..] run tp @s 2745 32 872 90 0

