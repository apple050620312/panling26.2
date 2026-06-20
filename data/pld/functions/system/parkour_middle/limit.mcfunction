effect clear @s jump_boost
effect clear @s slow_falling
execute at @s run kill @e[distance=..2,type=fishing_bobber] 

execute store result score @s parkour_middle_skill_check run clear @s #pld:armor_weapon_feather 0
execute if score @s parkour_middle_skill_check matches 1.. run scoreboard players set @s parkour_middle_skill -1


scoreboard players add @s parkour_middle_time 1
scoreboard players operation @s parkour_middle_20 = @s parkour_middle_time
scoreboard players operation @s parkour_middle_20 /= 20 int

#显示时间 actionbar
title @s actionbar [{"translate":"pl.info.parkour_middle.time.a"},{"score":{"name": "@s","objective": "parkour_middle_20"},"color":"red","bold": true},{"translate":"pl.info.parkour_middle.time.b"}]
