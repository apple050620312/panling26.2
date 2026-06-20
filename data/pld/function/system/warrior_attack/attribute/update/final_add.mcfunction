#===========================最终近战攻击 +x 1位小数 final_add===========================#
#裝備提供箭矢强度
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s head_atk_pt_final_add1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s chest_atk_pt_final_add1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s legs_atk_pt_final_add1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s feet_atk_pt_final_add1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s weapon_atk_pt_final_add1
