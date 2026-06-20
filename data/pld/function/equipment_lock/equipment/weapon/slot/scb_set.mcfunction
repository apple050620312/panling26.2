
#裝備泛用屬性-進攻-武器
scoreboard players operation @s weapon_atk_pt_base1 = @s equipment_atk_pt_base1
scoreboard players operation @s weapon_atk_sp_base1 = @s equipment_atk_sp_base1
scoreboard players operation @s weapon_atk_sp_multiply_base = @s equipment_atk_sp_multiply_base
scoreboard players operation @s weapon_atk_pt_multiply_base = @s equipment_atk_pt_multiply_base
scoreboard players operation @s weapon_atk_pt_multiply = @s equipment_atk_pt_multiply
scoreboard players operation @s weapon_atk_pt_final_add1 = @s equipment_atk_pt_final_add1

#裝備泛用屬性-速度-武器
scoreboard players operation @s weapon_speed_pc_multiply_base = @s equipment_speed_pc_multiply_base
scoreboard players operation @s weapon_speed_pc_multiply = @s equipment_speed_pc_multiply
execute if entity @s[scores={weapon_rare=4,weapon_branch=1,job=0}] run function pld:system/warrior_attack/weapon_skills/sword4/enable
execute if entity @s[scores={weapon_rare=5,weapon_branch=0,job=1}] run function pld:system/archer_damage/weapon_skill/bow5/enable
