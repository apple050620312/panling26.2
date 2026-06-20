#获取玩家yrot
#execute store result score @s player_yrot4 run data get entity @s Rotation[0] 10000
#获得方向量
#execute store result score input int run data get entity @s Rotation[0] 10000
#使用sin函数-来自数学包-作者：小豆
#function math:4sin
#execute store result score @s player_yrot_4sin run scoreboard players get result int
#scoreboard players set @s player_yrot_-4sin 0
#scoreboard players operation @s player_yrot_-4sin -= @s player_yrot_4sin
#使用cos函数-来自数学包-作者：小豆
#function math:4cos
#execute store result score @s player_yrot_4cos run scoreboard players get result int
#scoreboard players set @s player_yrot_-4cos 0
#scoreboard players operation @s player_yrot_-4cos -= @s player_yrot_4cos


function pld:pre/player_rot/public_get_k_y0
#返回值 3位小数
#玩家水平前方单位向量  （忽视y）
#temp_k0 int --------x方向
#temp_k2 int --------z方向

#分开击退动量变化量
#motion x变化量
scoreboard players operation @s knock_motion_4x = temp_k0 int
scoreboard players operation @s knock_motion_4x *= #system konck_power1 
#scoreboard players operation @s knock_motion_4x /= 10 int

#y值固定修改为0.4
#scoreboard players set @s knock_motion_4y 4000

#motion z变化量
scoreboard players operation @s knock_motion_4z = temp_k2 int
scoreboard players operation @s knock_motion_4z *= #system konck_power1 
#scoreboard players operation @s knock_motion_4z /= 10 int

#额外的传输记分板渠道-虚拟玩家#temp
scoreboard players operation #temp knock_motion_4x = @s knock_motion_4x
scoreboard players operation #temp knock_motion_4z = @s knock_motion_4z
scoreboard players operation #temp player_cause_1damage = @s player_cause_1damage

#将tag为sweeped的怪物横扫击退
tag @s add if_death_count
execute as @e[tag=sweeped,distance=..3] run function pld:system/warrior_attack/sweep/target
tag @s remove if_death_count
