#根据marker的记分板进行傷害计算 对 所有 zf_earth_attack的实体
scoreboard players operation #temp entity_hurt_temp = @s zf_earth_str
scoreboard players set #temp temp 100
scoreboard players operation #temp entity_hurt_temp *= #temp temp
scoreboard players operation #temp player_uid = @s player_uid 
execute as @a[scores={job=2}] if score @s player_uid = #temp player_uid run tag @s add if_death_count
execute as @e[tag=zf_earth_attack] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect

#眩晕2s
scoreboard players set @e[tag=zf_earth_attack,tag=!instance_boss] vertigo_5ticks 10
execute as @e[tag=zf_earth_attack,tag=!instance_boss] run data merge entity @s {NoAI:1b}


tag @a remove if_death_count
tag @e remove zf_earth_attack
