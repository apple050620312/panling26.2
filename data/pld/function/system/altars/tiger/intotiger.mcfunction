setblock -581 164 -239 minecraft:white_stained_glass
execute unless score @s tiger_check matches 1 run tellraw @s {"translate":"pl.info.pos_enable_west4"}
scoreboard players set @s tiger_check 1
tp @s 2298 80 -952 -180 0 