attribute @s attack_damage modifier remove panling:mod_9_1_1_1_1
attribute @s attack_damage modifier remove panling:mod_9_2_2_2_2
attribute @s attack_damage modifier remove panling:mod_9_3_3_3_3
attribute @s attack_damage modifier remove panling:mod_9_4_4_4_4

attribute @s attack_damage modifier remove panling:mod_10_1_1_1_1
attribute @s attack_damage modifier remove panling:mod_10_2_2_2_2
attribute @s attack_damage modifier remove panling:mod_10_3_3_3_3
attribute @s attack_damage modifier remove panling:mod_10_4_4_4_4

attribute @s attack_speed modifier remove panling:mod_9_1_1_1_1
attribute @s attack_speed modifier remove panling:mod_9_2_2_2_2
attribute @s attack_speed modifier remove panling:mod_9_3_3_3_3
attribute @s attack_speed modifier remove panling:mod_9_4_4_4_4

attribute @s movement_speed modifier remove panling:mod_9_1_1_1_1
attribute @s movement_speed modifier remove panling:mod_9_2_2_2_2
attribute @s movement_speed modifier remove panling:mod_9_3_3_3_3
attribute @s movement_speed modifier remove panling:mod_9_4_4_4_4

execute if entity @s[scores={job=0}] run function pld:system/armorlock/legend_attributes/attributes0
execute if entity @s[scores={job=1}] run function pld:system/armorlock/legend_attributes/attributes1
