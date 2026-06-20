#记录玩家当前视角
#data modify storage pld:system Temp set from entity @s Rotation
execute store result score @s player_last_rot0 run data get storage pld:system Temp.Rotation[0]
execute store result score @s player_last_rot1 run data get storage pld:system Temp.Rotation[1]
