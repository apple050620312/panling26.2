execute unless entity @s[scores={racefriend3=0..}] run tellraw @s {"translate":"pl.pvp.info.pvp1.atk_friend_not_enough"}
execute if entity @s[scores={racefriend3=0..}] unless entity @s[level=10..] run tellraw @s {"translate":"pl.pvp.info.pvp1.atk_lvl_not_enough"}
execute if entity @s[scores={racefriend3=0..},level=10..] run tp @s 3267 12 -138 90 0

