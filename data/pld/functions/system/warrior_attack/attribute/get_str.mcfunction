execute store result score @s attack_damage_effect run data get entity @s ActiveEffects[{Id:5}].Amplifier 1.0
scoreboard players add @s attack_damage_effect 1

scoreboard players set #temp temp 20

scoreboard players operation @s attack_damage_effect *= #temp temp

