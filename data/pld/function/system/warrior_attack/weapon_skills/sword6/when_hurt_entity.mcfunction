execute if score @s weapon_skill_sword6_main_5ticks matches 0.. unless score @s weapon_skill_sword6_main_pursuit_cool_5ticks matches 0.. run function pld:system/warrior_attack/weapon_skills/sword6/active/pursuit
execute unless score @s weapon_skill_sword6_positive_cool_5ticks matches 0.. run function pld:system/warrior_attack/weapon_skills/sword6/positive/lvl_up

