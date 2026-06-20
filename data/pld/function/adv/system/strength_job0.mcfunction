execute store result score @s temp run data get entity @s ActiveEffects[{Id:5}].Amplifier
execute if score @s temp matches 0.. run attribute @s minecraft:generic.attack_damage modifier add 6-6-6-6-0 "战士力量效果加成0" 0.2 multiply_base
execute if score @s temp matches 1.. run attribute @s minecraft:generic.attack_damage modifier add 6-6-6-6-1 "战士力量效果加成1" 0.2 multiply_base
execute if score @s temp matches 2.. run attribute @s minecraft:generic.attack_damage modifier add 6-6-6-6-2 "战士力量效果加成2" 0.2 multiply_base
execute if score @s temp matches 3.. run attribute @s minecraft:generic.attack_damage modifier add 6-6-6-6-3 "战士力量效果加成3" 0.2 multiply_base
execute if score @s temp matches 4.. run attribute @s minecraft:generic.attack_damage modifier add 6-6-6-6-4 "战士力量效果加成4" 0.2 multiply_base
