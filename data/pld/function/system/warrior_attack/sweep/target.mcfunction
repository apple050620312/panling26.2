#获取实体当前动量
execute store result score @s target_motion_4x run data get entity @s Motion[0] 10000
execute store result score @s target_motion_4z run data get entity @s Motion[2] 10000

#根据抗击退率减少被击退量
execute store result score @s temp run attribute @s generic.knockback_resistance get 100
scoreboard players set @s temp2 100
scoreboard players operation @s temp2 -= @s temp
scoreboard players operation #temp knock_motion_4x *= @s temp2
scoreboard players operation #temp knock_motion_4x /= 100 int
scoreboard players operation #temp knock_motion_4z *= @s temp2
scoreboard players operation #temp knock_motion_4z /= 100 int

#根据实际公式计算最终motion
scoreboard players operation @s target_motion_4x /= 2 int
scoreboard players operation @s target_motion_4z /= 2 int

scoreboard players operation @s final_motion_4x = #temp knock_motion_4x
scoreboard players operation @s final_motion_4x += @s target_motion_4x

scoreboard players operation @s final_motion_4z = #temp knock_motion_4z
scoreboard players operation @s final_motion_4z += @s target_motion_4z

#重置temp内的分数
scoreboard players reset #temp knock_motion_4x
scoreboard players reset #temp knock_motion_4z

#修改怪物的motion值
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s final_motion_4x
execute unless score @s temp matches 100 if entity @s[nbt={OnGround:1b}] run data modify entity @s Motion[1] set value 0.4d
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s final_motion_4z


#受伤函数

#横扫攻击，傷害控制为一半
scoreboard players operation #temp entity_hurt_temp = #temp player_cause_2damage
scoreboard players operation #temp entity_hurt_temp /= 2 int

#傷害至少2点
#execute if score #temp entity_hurt_temp matches ..200 run scoreboard players add #temp entity_hurt_temp 200

#受伤公用函数
function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
