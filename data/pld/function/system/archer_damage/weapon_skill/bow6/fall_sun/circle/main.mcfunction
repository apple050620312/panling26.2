#选择目标 画圈
tag @s add particle_mark
scoreboard players set @s[tag=particle_mark] loop 0
execute as @s[tag=particle_mark] at @s run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/circle/loop

scoreboard players reset @s[tag=particle_mark] loop