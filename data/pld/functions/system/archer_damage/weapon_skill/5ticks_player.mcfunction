#倒计时
#武器技冷却
function pld:system/weapon_skill_cool/5ticks_player

#crossbow2
scoreboard players remove @s[scores={weapon_skill_crossbow2_5ticks=0..}] weapon_skill_crossbow2_5ticks 1
execute as @s[scores={weapon_skill_crossbow2_5ticks=0}] run function pld:system/archer_damage/weapon_skill/crossbow2/clear

#crossbow4
execute as @s[scores={weapon_rare=4,weapon_branch=1}] run function pld:system/archer_damage/weapon_skill/crossbow4/passive_skill
execute as @s[scores={weapon_skill_crossbow4_5ticks=0..}] run function pld:system/archer_damage/weapon_skill/crossbow4/update

#crossbow5
scoreboard players remove @s[scores={weapon_skill_crossbow5_5ticks=0..}] weapon_skill_crossbow5_5ticks 1

#bow5
scoreboard players remove @s[scores={weapon_skill_bow5_5ticks=0..,weapon_branch=0,weapon_rare=5}] weapon_skill_bow5_5ticks 1
execute as @s[scores={weapon_skill_bow5_5ticks=0,weapon_branch=0,weapon_rare=5}] run function pld:system/archer_damage/weapon_skill/bow5/star_lvl_up

#bow6
scoreboard players remove @s[scores={weapon_skill_bow6_5ticks=0..}] weapon_skill_bow6_5ticks 1
execute as @s[scores={weapon_skill_bow6_5ticks=0}] run function pld:system/archer_damage/weapon_skill/bow6/clear
    #粒子效果
execute as @s[scores={weapon_skill_bow6_5ticks=0..}] at @s run particle flame ~ ~ ~ 1.0 0.2 1.0 0 10 force
    #bow6 主动技能冷却
scoreboard players remove @s[scores={weapon_skill_bow6_cool_5ticks=0..}] weapon_skill_bow6_cool_5ticks 1
execute if score @s weapon_skill_bow6_cool_5ticks matches 0 run title @s actionbar {"translate":"pl.info.weapon_skill_bow6.fall_sun.cool_down"}





