#裝備稀有度&套裝效果id
execute store result score @s armor_rare_legs run data get block ~ 255 ~ Items[0].components."minecraft:custom_data".rare
execute if data block ~ 255 ~ Items[0].tag.set_bonus_id store result score @s armor_set_bonus_id_legs run data get block ~ 255 ~ Items[0].tag.set_bonus_id

#裝備泛用屬性-進攻-腿
scoreboard players operation @s legs_atk_pt_base1 = @s equipment_atk_pt_base1
scoreboard players operation @s legs_atk_pt_multiply_base = @s equipment_atk_pt_multiply_base
scoreboard players operation @s legs_atk_pt_multiply = @s equipment_atk_pt_multiply
scoreboard players operation @s legs_atk_pt_final_add1 = @s equipment_atk_pt_final_add1

#裝備泛用屬性-速度-腿
scoreboard players operation @s legs_speed_pc_multiply_base = @s equipment_speed_pc_multiply_base
scoreboard players operation @s legs_speed_pc_multiply = @s equipment_speed_pc_multiply

#裝備泛用屬性-減傷-头
scoreboard players operation @s legs_all_protection_multiply_base = @s equipment_all_protection_multiply_base
scoreboard players operation @s legs_arrow_protection_multiply_base = @s equipment_arrow_protection_multiply_base
scoreboard players operation @s legs_fire_protection_multiply_base = @s equipment_fire_protection_multiply_base 