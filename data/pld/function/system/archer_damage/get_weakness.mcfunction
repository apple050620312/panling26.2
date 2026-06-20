execute store result score @s archer_damage_effect_weak run data get entity @s ActiveEffects[{Id:18}].Amplifier 1.0
scoreboard players add @s archer_damage_effect_weak 1

scoreboard players set #temp temp -25

scoreboard players operation @s archer_damage_effect_weak *= #temp temp

