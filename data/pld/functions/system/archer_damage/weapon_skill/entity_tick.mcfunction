#hit check
execute if entity @s[tag=monster] if predicate pld:effect_check/hero_of_the_village run function pld:system/archer_damage/shoot/hit_check

#crossbow3落地箭
execute as @s[type=arrow,tag=weapon_skill_crossbow3] if data entity @s {inGround:1b} run function pld:system/archer_damage/weapon_skill/crossbow3/inground

#crossbow5 tick
execute as @s[tag=monster] unless score @s monster_uuid_0 matches -2147483648.. store result score @s monster_uuid_0 run data get entity @s UUID[0]

execute as @s[type=marker,tag=star_arrow] at @s run function pld:system/archer_damage/weapon_skill/crossbow5/arrow_action_tick
execute at @s[type=arrow,tag=crossbow5] run particle end_rod ~ ~ ~ 0 0 0 0 1


#bow6 marker tick
execute as @s[type=marker,tag=arrow_marker] run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/marker_tick
#sun tick
execute as @s[type=armor_stand,tag=fall_sun] at @s run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/sun_tick
