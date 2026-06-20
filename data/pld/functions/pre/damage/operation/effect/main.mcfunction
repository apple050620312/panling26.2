#演算-抗性提升减免
scoreboard players set @s entity_effect_resistance 0
execute store result score @s entity_effect_resistance run data get entity @s ActiveEffects[{Id:11}].Amplifier
execute if score @s entity_effect_resistance matches 0.. run scoreboard players add @s entity_effect_resistance 1
scoreboard players set #temp temp 20
scoreboard players operation #temp temp *= @s entity_effect_resistance
scoreboard players set #temp temp2 100
scoreboard players operation #temp temp2 -= #temp temp
execute if score #temp temp2 matches ..0 run scoreboard players set #temp temp2 0
scoreboard players operation @s entity_hurt_temp *= #temp temp2
scoreboard players set #temp temp2 100
scoreboard players operation @s entity_hurt_temp /= #temp temp2

