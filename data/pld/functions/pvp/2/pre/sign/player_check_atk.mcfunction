execute unless entity @s[scores={racefriend4=0..}] run tellraw @s {"translate":"pl.pvp.info.pvp2.atk_friend_not_enough"}
execute if entity @s[scores={racefriend4=0..}] unless entity @s[level=10..] run tellraw @s {"translate":"pl.pvp.info.pvp2.atk_lvl_not_enough"}
execute if entity @s[scores={racefriend4=0..},level=10..] run tp @s 1662 172 186 0 0

