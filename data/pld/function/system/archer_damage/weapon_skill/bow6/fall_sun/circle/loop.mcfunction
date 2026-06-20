execute positioned ~ ~0.2 ~ rotated ~ 0 run particle flame ^ ^ ^5 0.1 0 0.1 0 1 force
execute unless score @s loop matches 101.. run scoreboard players add @s loop 1
execute rotated ~3.6 ~ if score @s loop matches ..99 run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/circle/loop

