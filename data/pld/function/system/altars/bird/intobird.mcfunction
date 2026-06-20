execute unless score @s bird_check matches 1 run tellraw @s {"translate":"pl.info.pos_enable_south4"}
scoreboard players set @s bird_check 1
setblock 239 21 680 minecraft:red_stained_glass
tp @s 3247 100 -743 128 -35