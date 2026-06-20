#context
#damage #temp player_cause_1damage
#tag    warrior_tag

#输入数值，并变成二位小数
scoreboard players operation #temp entity_hurt_temp = #temp player_cause_1damage
scoreboard players set #temp temp 10
scoreboard players operation #temp entity_hurt_temp *= #temp temp

execute if score #temp entity_hurt_temp matches 2000.. run scoreboard players set #temp entity_hurt_temp 2000

#受伤函数
tag @s add if_death_count
execute as @e[tag=warrior_tag] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @s remove if_death_count

