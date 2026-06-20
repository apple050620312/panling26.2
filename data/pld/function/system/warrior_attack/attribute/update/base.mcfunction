#===========================基础近战攻击 1位小数===========================#
#附灵提供近战攻击
scoreboard players operation @s attack_damage1 += @s attack_damage1_enchanted
#状态效果提供近战攻击
#scoreboard players operation @s attack_damage1 += @s attack_damage_effect
#羽毛提供近战攻击
scoreboard players operation @s attack_damage1 += @s attack_damage1_feather
#食物提供近战攻击
scoreboard players operation @s attack_damage1 += @s attack_damage1_food
#支线提供近战攻击
scoreboard players operation @s attack_damage1 += @s attack_damage1_murder
scoreboard players operation @s[scores={race=3}] attack_damage1 += @s attack_damage1_exzhan
#生命头提供近战攻击
scoreboard players operation @s temp = @s hp_damage
scoreboard players set @s temp2 15
scoreboard players operation @s temp *= @s temp2
scoreboard players operation @s temp /= 10 int
scoreboard players operation @s attack_damage1 += @s temp
scoreboard players reset @s temp
scoreboard players reset @s temp2
#裝備提供近战攻击
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s head_atk_pt_base1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s chest_atk_pt_base1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s legs_atk_pt_base1
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += @s feet_atk_pt_base1
execute if score @s job matches 0 unless score not_select_act_weapon int matches 1 run scoreboard players operation @s attack_damage1 += @s weapon_atk_pt_base1
