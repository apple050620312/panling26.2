execute unless score @s dragon_check matches 1 run tellraw @s {"translate":"pl.info.pos_enable_east4"}
scoreboard players set @s dragon_check 1
setblock 564 37 394 minecraft:blue_stained_glass
tp @s 1696 104 880 -180 0