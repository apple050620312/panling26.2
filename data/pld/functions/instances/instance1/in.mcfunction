execute if entity @s[level=40..] run scoreboard players set @s copper_chest 1
execute if entity @s[level=40..] run scoreboard players set @s silver_chest 1
execute if entity @s[level=40..] run scoreboard players set @s feather_mainland -1
execute if entity @s[level=40..] run tp @s 2888 21 -486
execute unless entity @s[level=40..] run tellraw @s {"translate": "pl.info.instance1.inresistance"}