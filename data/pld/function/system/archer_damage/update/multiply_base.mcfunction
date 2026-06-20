#===========================箭矢强度 +x% 百分比  multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和


#execute if score @s armor_rare_head matches 62 if score @s armor6_awake_head matches 1 run scoreboard players add @s archer_damage_l6 5
#execute if score @s armor_rare_head matches 62 if score @s armor6_awake_head matches 2 run scoreboard players add @s archer_damage_l6 8
#execute if score @s armor_rare_head matches 62 if score @s armor6_awake_head matches 3 run scoreboard players add @s archer_damage_l6 10
#execute if score @s armor_rare_chest matches 62 if score @s armor6_awake_chest matches 1 run scoreboard players add @s archer_damage_l6 5
#execute if score @s armor_rare_chest matches 62 if score @s armor6_awake_chest matches 2 run scoreboard players add @s archer_damage_l6 8
#execute if score @s armor_rare_chest matches 62 if score @s armor6_awake_chest matches 3 run scoreboard players add @s archer_damage_l6 10
#execute if score @s armor_rare_legs matches 62 if score @s armor6_awake_legs matches 1 run scoreboard players add @s archer_damage_l6 5
#execute if score @s armor_rare_legs matches 62 if score @s armor6_awake_legs matches 2 run scoreboard players add @s archer_damage_l6 8
#execute if score @s armor_rare_legs matches 62 if score @s armor6_awake_legs matches 3 run scoreboard players add @s archer_damage_l6 10
#execute if score @s armor_rare_feet matches 61 if score @s armor6_awake_feet matches 1 run scoreboard players add @s archer_damage_l6 5
#execute if score @s armor_rare_feet matches 61 if score @s armor6_awake_feet matches 2 run scoreboard players add @s archer_damage_l6 8
#execute if score @s armor_rare_feet matches 61 if score @s armor6_awake_feet matches 3 run scoreboard players add @s archer_damage_l6 10


#装备提供箭矢强度
scoreboard players operation @s archer_damage_l6 += @s head_atk_pt_multiply_base
scoreboard players operation @s archer_damage_l6 += @s chest_atk_pt_multiply_base
scoreboard players operation @s archer_damage_l6 += @s legs_atk_pt_multiply_base
scoreboard players operation @s archer_damage_l6 += @s feet_atk_pt_multiply_base
scoreboard players operation @s archer_damage_l6 += @s weapon_atk_pt_multiply_base

#力量状态效果提供增幅
scoreboard players operation @s archer_damage_l6 += @s archer_damage_effect
#虚弱状态效果提供减益
scoreboard players operation @s archer_damage_l6 += @s archer_damage_effect_weak

function pld:pre/hp_precent

#套装效果增幅 
execute if entity @s[tag=fire_set_2] if score @s hp_precent >= #system armor_set_bonus_3_2_hp run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_3_2_1
execute if entity @s[tag=metal_set_2_lvl1] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_0_2
execute if entity @s[tag=metal_set_2_lvl2] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_0_2
execute if entity @s[tag=fire_0_ring] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_3_ring

execute if entity @s[tag=earth_set_4a] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_4_4_1
execute if entity @s[tag=metal_set_4b,scores={tiger=1}] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_0_4b
execute if entity @s[tag=fire_set_4b,scores={bird=1}] run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_3_4b
execute if score @s armor_set_bonus_1_4_tick matches 1.. run scoreboard players operation @s archer_damage_l6 += #system armor_set_bonus_1_4_1
execute if score @s armor_set_bonus_3_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/fire/41/lvl

