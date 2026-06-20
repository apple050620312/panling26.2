#如果是crossbow5射箭
execute if score @s weapon_rare matches 5 if score @s weapon_branch matches 1 run function pld:system/archer_damage/weapon_skill/crossbow5/star_arrow
execute if score @s weapon_rare matches 5 if score @s weapon_branch matches 1 if score @s weapon_skill_crossbow5_5ticks matches 1.. run function pld:system/archer_damage/weapon_skill/crossbow5/extra_star_arrow

