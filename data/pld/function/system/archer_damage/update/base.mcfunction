#===========================基础箭矢强度 1位小数===========================#

#附灵提供箭矢强度
scoreboard players operation @s archer_damage_should += @s archer_damage1_enchanted
#状态效果提供箭矢强度
#scoreboard players operation @s archer_damage_should += @s archer_damage_effect
#羽毛提供箭矢强度
scoreboard players operation @s archer_damage_should += @s archer_damage1_feather
#食物提供箭矢强度
scoreboard players operation @s archer_damage_should += @s archer_damage1_food
#支线提供箭矢强度
scoreboard players operation @s archer_damage_should += @s archer_damage1_murder
scoreboard players operation @s[scores={race=3}] archer_damage_should += @s archer_damage1_exzhan
#生命头提供箭矢强度
scoreboard players operation @s archer_damage_should += @s hp_damage
#裝備提供箭矢强度
scoreboard players operation @s archer_damage_should += @s head_atk_pt_base1
scoreboard players operation @s archer_damage_should += @s chest_atk_pt_base1
scoreboard players operation @s archer_damage_should += @s legs_atk_pt_base1
scoreboard players operation @s archer_damage_should += @s feet_atk_pt_base1
scoreboard players operation @s archer_damage_should += @s weapon_atk_pt_base1


#套装效果提供箭矢强度
execute if entity @s[tag=metal_set_4a,scores={job=1}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run scoreboard players operation @s archer_damage_should += #system armor_set_bonus_0_4_1

#武器提供箭矢强度
#scoreboard players operation @s archer_damage_should += @s archer_weapon_1damage
#
#
#防具提供箭矢强度
#execute if score @s armor_rare_head matches 2 run scoreboard players add @s archer_damage_should 5
#execute if score @s armor_rare_chest matches 2 run scoreboard players add @s archer_damage_should 5
#execute if score @s armor_rare_legs matches 2 run scoreboard players add @s archer_damage_should 5
#execute if score @s armor_rare_feet matches 2 run scoreboard players add @s archer_damage_should 5
#
#execute if score @s armor_rare_head matches 3 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_chest matches 3 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_legs matches 3 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_feet matches 3 run scoreboard players add @s archer_damage_should 10
#
#execute if score @s armor_rare_head matches 4 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_chest matches 4 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_legs matches 4 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_feet matches 4 run scoreboard players add @s archer_damage_should 15
#
#execute if score @s armor_rare_legs matches 40 run scoreboard players add @s archer_damage_should 60
#
#execute if score @s armor_rare_head matches 5 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_chest matches 5 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_legs matches 5 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_feet matches 5 run scoreboard players add @s archer_damage_should 20
#
#execute if score @s armor_rare_legs matches 50 run scoreboard players add @s archer_damage_should 80
#
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 0 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 1 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_head matches 61..63 if score @s armor6_awake_head matches 2..3 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 0 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 1 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_chest matches 61..63 if score @s armor6_awake_chest matches 2..3 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 0 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 1 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_legs matches 61..63 if score @s armor6_awake_legs matches 2..3 run scoreboard players add @s archer_damage_should 20
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 0 run scoreboard players add @s archer_damage_should 10
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 1 run scoreboard players add @s archer_damage_should 15
#execute if score @s armor_rare_feet matches 61..63 if score @s armor6_awake_feet matches 2..3 run scoreboard players add @s archer_damage_should 20


