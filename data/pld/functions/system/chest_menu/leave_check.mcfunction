#检查玩家是否移动了视线
scoreboard players reset @s success

#保存当前视线
#data modify storage pld:system Temp set from entity @s Rotation
execute store result score @s temp run data get storage pld:system Temp.Rotation[0]
execute store result score @s temp2 run data get storage pld:system Temp.Rotation[1]

#对比
execute if score @s temp = @s player_last_rot0 if score @s temp2 = @s player_last_rot1 run scoreboard players set @s success 1
execute unless score @s success matches 1 run function pld:system/chest_menu/leave_function


#储存至上一tick的视角
scoreboard players operation @s player_last_rot0 = @s temp
scoreboard players operation @s player_last_rot1 = @s temp2