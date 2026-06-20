#神器提供缩减
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 1 run scoreboard players add @s weapon_skill_cool_reduce 10
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 2 run scoreboard players add @s weapon_skill_cool_reduce 15
#execute if score @s armor_rare_head matches 61 if score @s armor6_awake_head matches 3 run scoreboard players add @s weapon_skill_cool_reduce 20
#
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 1 run scoreboard players add @s weapon_skill_cool_reduce 10
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 2 run scoreboard players add @s weapon_skill_cool_reduce 15
#execute if score @s armor_rare_chest matches 63 if score @s armor6_awake_chest matches 3 run scoreboard players add @s weapon_skill_cool_reduce 20
#
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 1 run scoreboard players add @s weapon_skill_cool_reduce 10
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 2 run scoreboard players add @s weapon_skill_cool_reduce 15
#execute if score @s armor_rare_legs matches 63 if score @s armor6_awake_legs matches 3 run scoreboard players add @s weapon_skill_cool_reduce 20
#
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 1 run scoreboard players add @s weapon_skill_cool_reduce 10
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 2 run scoreboard players add @s weapon_skill_cool_reduce 15
#execute if score @s armor_rare_feet matches 62 if score @s armor6_awake_feet matches 3 run scoreboard players add @s weapon_skill_cool_reduce 20

#装备提供速度力
scoreboard players operation @s weapon_skill_cool_reduce += @s head_speed_pc_multiply_base
scoreboard players operation @s weapon_skill_cool_reduce += @s chest_speed_pc_multiply_base
scoreboard players operation @s weapon_skill_cool_reduce += @s legs_speed_pc_multiply_base
scoreboard players operation @s weapon_skill_cool_reduce += @s feet_speed_pc_multiply_base
scoreboard players operation @s weapon_skill_cool_reduce += @s weapon_speed_pc_multiply_base


