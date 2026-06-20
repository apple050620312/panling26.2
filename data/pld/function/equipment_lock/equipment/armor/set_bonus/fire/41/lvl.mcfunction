#累加三个值
scoreboard players set @s temp 0

scoreboard players operation @s temp += @s armor_set_bonus_3_1_walk
scoreboard players operation @s temp += @s armor_set_bonus_3_1_sprint
scoreboard players operation @s temp += @s armor_set_bonus_3_1_crouch

scoreboard players set @s temp2 100
scoreboard players operation @s temp /= @s temp2

scoreboard players operation @s temp < #system armor_set_bonus_3_1_lvl

scoreboard players operation @s temp *= #system armor_set_bonus_3_1_plvl

scoreboard players operation @s archer_damage_l6 += @s temp

