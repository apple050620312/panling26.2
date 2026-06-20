setblock -114 7 -399 minecraft:green_stained_glass
execute unless score @s turtle_check matches 1 run tellraw @s {"translate":"pl.info.pos_enable_north4"}
scoreboard players set @s turtle_check 1
tp @s 2092 90 1057 -150 0