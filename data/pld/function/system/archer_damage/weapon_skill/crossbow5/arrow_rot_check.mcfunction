#语境
# @s 箭矢
# @e[tag=monster,tag=star_arrow_target]
#tag @s add the_arrow
#effect give @e[tag=monster,tag=star_arrow_target] glowing 5
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:marker,tag=direct_target,limit=1] feet

#execute store result score #temp temp run data get entity @e[type=minecraft:marker,tag=direct_target,limit=1] Rotation[0] -10000
#execute store result score #temp temp2 run data get entity @e[type=minecraft:marker,tag=direct_target,limit=1] Rotation[1] -10000
#
#execute if score #temp temp matches 0.. run scoreboard players set #temp temp4 1800000
#scoreboard players operation #temp temp4 -= #temp temp
#scoreboard players operation #temp temp = #temp temp4
#
#execute if score #temp temp matches ..0 run scoreboard players set #temp temp4 -1800000
#scoreboard players operation #temp temp4 -= #temp temp
#scoreboard players operation #temp temp = #temp temp4
#
##此时 temp temp2中为目标需要转向的yrot xrot 4位小数
##yrot
#execute store result score @s temp run data get entity @s Rotation[0] -10000
#scoreboard players operation @s temp -= #temp temp
#execute if score @s temp matches 1800001.. run scoreboard players remove @s temp 1800000
#execute if score @s temp matches ..-1800001 run scoreboard players add @s temp 1800000
#
#scoreboard players set #temp temp4 0
#scoreboard players operation #temp temp4 -= @s temp
#scoreboard players operation @s temp = #temp temp4
#
##xrot
#execute store result score @s temp2 run data get entity @s Rotation[1] -10000
#scoreboard players operation #temp temp2 -= @s temp2
#scoreboard players operation @s temp2 = #temp temp2
#
##此时 @s temp temp2中为目标需要转向的yrot xrot量 4位小数
##取半 覆盖
#scoreboard players set #temp temp4 2
#scoreboard players operation @s temp /= #temp temp4
#scoreboard players operation @s temp2 /= #temp temp4
#
#execute store result score #temp temp run data get entity @s Rotation[0] 10000
#execute store result score #temp temp2 run data get entity @s Rotation[1] 10000
#
#scoreboard players operation #temp temp += @s temp
#scoreboard players operation #temp temp2 += @s temp2
#
#
#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #temp temp
##execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get #temp temp2
#
#tag @s remove the_arrow
