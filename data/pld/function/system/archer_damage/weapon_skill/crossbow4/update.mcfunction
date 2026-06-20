
#粒子效果
execute at @s run particle falling_water ~ ~1 ~ 0.3 0.3 0.3 0 10 force

execute if score @s weapon_skill_crossbow4_5ticks matches 20 run attribute @s movement_speed modifier remove panling:mod_11_5_5_5_1
execute if score @s weapon_skill_crossbow4_5ticks matches 15 run attribute @s movement_speed modifier remove panling:mod_11_5_5_5_2
execute if score @s weapon_skill_crossbow4_5ticks matches 10 run attribute @s movement_speed modifier remove panling:mod_11_5_5_5_3
execute if score @s weapon_skill_crossbow4_5ticks matches 5 run attribute @s movement_speed modifier remove panling:mod_11_5_5_5_4
execute if score @s weapon_skill_crossbow4_5ticks matches 0 run attribute @s movement_speed modifier remove panling:mod_11_5_5_5_5
execute if score @s weapon_skill_crossbow4_5ticks matches 0 run scoreboard players set @s weapon_skill_crossbow4_damage 0
execute if score @s weapon_skill_crossbow4_5ticks matches 0 run effect give @s absorption 10 0
scoreboard players remove @s weapon_skill_crossbow4_5ticks 1