execute if score @s in3_skill_dr_color matches 0 run scoreboard players set @s in3_skill_dr_tick 0
execute if score @s in3_skill_dr_color matches 1 run scoreboard players add @s in3_skill_dr_tick 1
execute if score @s in3_skill_dr_tick matches 100.. run effect give @s wither 5 1
execute if score @s in3_skill_dr_tick matches 100.. run scoreboard players set @s in3_skill_dr_tick 0
#更新
scoreboard players set @s in3_skill_dr_color 1
tag @s add drawn_white

