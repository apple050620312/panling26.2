#吸引
execute as @e[tag=monster,distance=..1,tag=!instance_boss] unless data entity @s NoAI run tp @s ~ ~-1 ~

#眩晕
execute as @e[tag=monster,distance=..3,tag=!instance_boss] unless data entity @s NoAI run function pld:system/warrior_attack/weapon_skills/sword3/vertigo 

#伤害
function pld:system/warrior_attack/weapon_skills/sword3/damage

#造成伤害
#输入数值，并变成二位小数
scoreboard players set #temp temp 100
scoreboard players operation #temp entity_hurt_temp /= #temp temp

#受伤函数
tag @s add if_death_count
execute as @e[tag=monster,distance=..3] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @s remove if_death_count

#触发器-造成伤害
execute if entity @e[tag=monster,distance=..3] run function pld:equipment_lock/equipment/armor/set_bonus/when_cause_damage

#粒子效果
particle minecraft:explosion ~ ~-1 ~ 0 0 0 0 1