#===========================最终箭矢强度 +x% 百分比 multiply===========================#
#六阶弓额外箭矢强度
#scoreboard players set @s archer_damage_l6 0
#
#execute if score @s weapon_rare matches 6 if score @s weapon6_awake matches 1 run scoreboard players add @s archer_damage_l6 10
#execute if score @s weapon_rare matches 6 if score @s weapon6_awake matches 2 run scoreboard players add @s archer_damage_l6 15
#execute if score @s weapon_rare matches 6 if score @s weapon6_awake matches 3 run scoreboard players add @s archer_damage_l6 20
#
#scoreboard players operation @s archer_damage_middle = @s archer_damage_should
#scoreboard players operation @s archer_damage_middle *= @s archer_damage_l6
#scoreboard players operation @s archer_damage_middle /= 100 int
#scoreboard players operation @s archer_damage_should += @s archer_damage_middle


#武器技额外箭矢强度
execute as @s[scores={weapon_skill_crossbow4_damage=1}] run function pld:system/archer_damage/weapon_skill/crossbow4/extra_power
execute as @s[scores={weapon_skill_bow6_5ticks=1..}] run function pld:system/archer_damage/weapon_skill/bow6/extra_power


#烈火印额外箭矢强度
scoreboard players set @s temp 0
execute if score @s zf_fire_tick matches 0.. run scoreboard players set @s temp 20

scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

#装备提供箭矢强度
scoreboard players operation @s temp = @s head_atk_pt_multiply
scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

scoreboard players operation @s temp = @s chest_atk_pt_multiply
scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

scoreboard players operation @s temp = @s legs_atk_pt_multiply
scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

scoreboard players operation @s temp = @s feet_atk_pt_multiply
scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle

scoreboard players operation @s temp = @s weapon_atk_pt_multiply
scoreboard players operation @s archer_damage_middle = @s archer_damage_should
scoreboard players operation @s archer_damage_middle *= @s temp
scoreboard players operation @s archer_damage_middle /= 100 int
scoreboard players operation @s archer_damage_should += @s archer_damage_middle
