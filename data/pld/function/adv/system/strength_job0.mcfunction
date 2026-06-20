execute store result score @s temp run data get entity @s ActiveEffects[{Id:5}].Amplifier
execute if score @s temp matches 0.. run attribute @s minecraft:attack_damage modifier add panling:mod_6_6_6_6_0 0.2 add_multiplied_base
execute if score @s temp matches 1.. run attribute @s minecraft:attack_damage modifier add panling:mod_6_6_6_6_1 0.2 add_multiplied_base
execute if score @s temp matches 2.. run attribute @s minecraft:attack_damage modifier add panling:mod_6_6_6_6_2 0.2 add_multiplied_base
execute if score @s temp matches 3.. run attribute @s minecraft:attack_damage modifier add panling:mod_6_6_6_6_3 0.2 add_multiplied_base
execute if score @s temp matches 4.. run attribute @s minecraft:attack_damage modifier add panling:mod_6_6_6_6_4 0.2 add_multiplied_base
