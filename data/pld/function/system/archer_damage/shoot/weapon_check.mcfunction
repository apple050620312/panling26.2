execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 1 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow1/main
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 2 if score @p[tag=shooter] weapon_branch matches 0 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow2/main
#execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 2 if score @p[tag=shooter] weapon_branch matches 1 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/crossbow2/main
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 3 if score @p[tag=shooter] weapon_branch matches 0 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow3/main
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 3 if score @p[tag=shooter] weapon_branch matches 1 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/crossbow3/main
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 4 if score @p[tag=shooter] weapon_branch matches 0 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow4/main
#bow4 射出的所有箭都被编辑
execute if score @p[tag=shooter] weapon_rare matches 4 if score @p[tag=shooter] weapon_branch matches 0 run function pld:system/archer_damage/weapon_skill/bow4/arrow

#crossbow5 射出的所有箭都被编辑
execute if score @p[tag=shooter] weapon_rare matches 5 if score @p[tag=shooter] weapon_branch matches 1 run function pld:system/archer_damage/weapon_skill/crossbow5/main_arrow

execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 4 if score @p[tag=shooter] weapon_branch matches 1 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/crossbow4/main
#bow5 下蹲武器技
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 5 if score @p[tag=shooter] weapon_branch matches 0 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow5/main
#crossbow5 下蹲武器技
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 5 if score @p[tag=shooter] weapon_branch matches 1 unless score @p[tag=shooter] weapon_skill_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/crossbow5/main
#bow6 下蹲武器技
execute if score @p[tag=shooter] sneak_check matches 1.. if score @p[tag=shooter] weapon_rare matches 6 if score @p[tag=shooter] weapon_branch matches 0 unless score @p[tag=shooter] weapon_skill_bow6_cool_5ticks matches 0.. run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/main


#武器技激活判据
execute as @p[tag=shooter] if score @s skill_success matches 1 run function pld:equipment_lock/equipment/armor/set_bonus/when_weapon_skill_enable

scoreboard players set @p[tag=shooter] skill_success 0

