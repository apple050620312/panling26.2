#语境 @p[tag=hit_player]
#当前坐标半径3爆炸

particle flame ~ ~ ~ 1 1.5 1 0 50 normal @a[distance=..10]
playsound entity.generic.explode ambient @a[distance=..10] ~ ~ ~

#点燃
execute as @e[tag=monster,distance=..5] run data merge entity @s {Fire:100s}
#造成伤害

scoreboard players operation #temp temp = @p[tag=hit_player] archer_damage
scoreboard players set #temp temp2 2
scoreboard players operation #temp temp *= #temp temp2

scoreboard players operation #temp entity_hurt_temp = #temp temp
tag @p[tag=hit_player] add if_death_count

tag @s add the_hurt_entity

execute as @e[tag=monster,distance=..5] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect

execute if entity @e[tag=monster,distance=..5,tag=!the_hurt_entity] as @p[tag=hit_player] run function pld:equipment_lock/equipment/armor/set_bonus/when_cause_damage

tag @s remove the_hurt_entity


tag @a remove if_death_count

