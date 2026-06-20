#===========================最终近战攻击 +x% 百分比 multiply===========================#

#烈火印额外近战攻击
scoreboard players set #attack_damage_multiply float2 0
execute if score @s zf_fire_tick matches 0.. run scoreboard players set #attack_damage_multiply float2 20

scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
scoreboard players operation @s attack_damage1 += #attack_damage_middle float1

#装备提供近战攻击
scoreboard players operation #attack_damage_multiply float2 = @s head_atk_pt_multiply
scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += #attack_damage_middle float1

scoreboard players operation #attack_damage_multiply float2 = @s chest_atk_pt_multiply
scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += #attack_damage_middle float1

scoreboard players operation #attack_damage_multiply float2 = @s legs_atk_pt_multiply
scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += #attack_damage_middle float1

scoreboard players operation #attack_damage_multiply float2 = @s feet_atk_pt_multiply
scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += #attack_damage_middle float1

scoreboard players operation #attack_damage_multiply float2 = @s weapon_atk_pt_multiply
scoreboard players operation #attack_damage_middle float1 = @s attack_damage1
scoreboard players operation #attack_damage_middle float1 *= #attack_damage_multiply float2
scoreboard players operation #attack_damage_middle float1 /= 100 int
execute if score @s job matches 0 run scoreboard players operation @s attack_damage1 += #attack_damage_middle float1