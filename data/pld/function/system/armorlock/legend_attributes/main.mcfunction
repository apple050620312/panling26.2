attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_9_1_1_1_1
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_9_2_2_2_2
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_9_3_3_3_3
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_9_4_4_4_4

attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_10_1_1_1_1
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_10_2_2_2_2
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_10_3_3_3_3
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_10_4_4_4_4

attribute @s minecraft:generic.attack_speed modifier remove panling:uuid_9_1_1_1_1
attribute @s minecraft:generic.attack_speed modifier remove panling:uuid_9_2_2_2_2
attribute @s minecraft:generic.attack_speed modifier remove panling:uuid_9_3_3_3_3
attribute @s minecraft:generic.attack_speed modifier remove panling:uuid_9_4_4_4_4

attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_9_1_1_1_1
attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_9_2_2_2_2
attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_9_3_3_3_3
attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_9_4_4_4_4

execute if entity @s[scores={job=0}] run function pld:system/armorlock/legend_attributes/attributes0
execute if entity @s[scores={job=1}] run function pld:system/armorlock/legend_attributes/attributes1
