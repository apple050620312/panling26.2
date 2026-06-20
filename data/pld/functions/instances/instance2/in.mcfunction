execute if entity @s[level=40..] run tp @s 1296 17 872 68 -8
execute if entity @s[level=40..] run scoreboard players set @s feather_mainland -1
execute unless entity @s[level=40..] run tellraw @s {"translate": "pl.info.instance2.inresistance"}