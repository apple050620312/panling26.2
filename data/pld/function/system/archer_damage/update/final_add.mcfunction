#===========================最终箭矢强度 +x 1位小数 final_add===========================#

#武器技额外箭矢强度
scoreboard players add @s[scores={weapon_skill_crossbow2_damage=1}] archer_damage_should 10

#裝備提供箭矢强度
scoreboard players operation @s archer_damage_should += @s head_atk_pt_final_add1
scoreboard players operation @s archer_damage_should += @s chest_atk_pt_final_add1
scoreboard players operation @s archer_damage_should += @s legs_atk_pt_final_add1
scoreboard players operation @s archer_damage_should += @s feet_atk_pt_final_add1
scoreboard players operation @s archer_damage_should += @s weapon_atk_pt_final_add1
