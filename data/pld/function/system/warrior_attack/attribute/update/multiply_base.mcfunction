#===========================近战攻击 +x% 百分比  multiply_base===========================#
# *（1+x%） x等于所有此乘区百分比和
#装备提供近战攻击
execute if score @s job matches 0 run scoreboard players operation #attack_damage_multiply_base int += @s head_atk_pt_multiply_base
execute if score @s job matches 0 run scoreboard players operation #attack_damage_multiply_base int += @s chest_atk_pt_multiply_base
execute if score @s job matches 0 run scoreboard players operation #attack_damage_multiply_base int += @s legs_atk_pt_multiply_base
execute if score @s job matches 0 run scoreboard players operation #attack_damage_multiply_base int += @s feet_atk_pt_multiply_base
execute if score @s job matches 0 run scoreboard players operation #attack_damage_multiply_base int += @s weapon_atk_pt_multiply_base

#力量状态效果提供增幅
scoreboard players operation #attack_damage_multiply_base int += @s attack_damage_effect
#虚弱状态效果提供减益
scoreboard players operation #attack_damage_multiply_base int += @s attack_damage_effect_weak

#套装效果增幅
function pld:pre/hp_precent
execute if entity @s[tag=fire_set_2] if score @s hp_precent >= #system armor_set_bonus_3_2_hp run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_3_2_0
execute if entity @s[tag=metal_set_2_lvl1] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_0_2
execute if entity @s[tag=metal_set_2_lvl2] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_0_2
execute if entity @s[tag=fire_0_ring] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_3_ring
execute if score @s armor_set_bonus_1_4_tick matches 1.. run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_1_4_0
execute if entity @s[tag=earth_set_4a] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_4_4_0
execute if entity @s[tag=metal_set_4b,scores={tiger=1}] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_0_4b
execute if entity @s[tag=fire_set_4b,scores={bird=1}] run scoreboard players operation #attack_damage_multiply_base int += #system armor_set_bonus_3_4b
execute if entity @s[tag=sword4_0] run scoreboard players add #attack_damage_multiply_base int 10
execute if score @s weapon_skill_sword6_positive_5ticks matches 1.. run function pld:system/warrior_attack/weapon_skills/sword6/positive/extra_damage
