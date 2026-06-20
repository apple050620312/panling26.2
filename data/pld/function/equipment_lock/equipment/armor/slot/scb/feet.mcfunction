#装备稀有度&套装效果id
execute store result score @s armor_rare_feet run data get block ~ 255 ~ Items[0].tag.rare
execute if data block ~ 255 ~ Items[0].tag.set_bonus_id store result score @s armor_set_bonus_id_feet run data get block ~ 255 ~ Items[0].tag.set_bonus_id

#装备泛用属性-进攻-脚
scoreboard players operation @s feet_atk_pt_base1 = @s equipment_atk_pt_base1
scoreboard players operation @s feet_atk_pt_multiply_base = @s equipment_atk_pt_multiply_base
scoreboard players operation @s feet_atk_pt_multiply = @s equipment_atk_pt_multiply
scoreboard players operation @s feet_atk_pt_final_add1 = @s equipment_atk_pt_final_add1

#装备泛用属性-速度-脚
scoreboard players operation @s feet_speed_pc_multiply_base = @s equipment_speed_pc_multiply_base
scoreboard players operation @s feet_speed_pc_multiply = @s equipment_speed_pc_multiply

#装备泛用属性-减伤-脚
scoreboard players operation @s feet_all_protection_multiply_base = @s equipment_all_protection_multiply_base
scoreboard players operation @s feet_arrow_protection_multiply_base = @s equipment_arrow_protection_multiply_base
scoreboard players operation @s feet_fire_protection_multiply_base = @s equipment_fire_protection_multiply_base 