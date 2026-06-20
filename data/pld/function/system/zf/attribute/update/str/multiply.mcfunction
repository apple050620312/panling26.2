#===========================最终阵法强度 +x% 百分比 multiply===========================#
scoreboard players set @s temp 0
execute if score @s zf_fire_tick matches 0.. run scoreboard players set @s temp 20

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2


#裝備提供加成
scoreboard players operation @s temp = @s head_atk_pt_multiply

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2


scoreboard players operation @s temp = @s chest_atk_pt_multiply

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2

scoreboard players operation @s temp = @s legs_atk_pt_multiply

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2

scoreboard players operation @s temp = @s feet_atk_pt_multiply

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2


scoreboard players operation @s temp = @s equipment_atk_pt_multiply

scoreboard players operation #temp temp2 = @s zf_str
scoreboard players operation #temp temp2 *= @s temp
scoreboard players operation #temp temp2 /= 100 int
scoreboard players operation @s zf_str += #temp temp2
