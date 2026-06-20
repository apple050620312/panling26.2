attribute @s minecraft:max_health modifier add panling:mod_1_5_5_5_5 0.3 add_multiplied_total
attribute @s minecraft:movement_speed modifier add panling:mod_1_5_5_5_5 0.1 add_multiplied_base
attribute @s minecraft:knockback_resistance modifier add panling:mod_1_5_5_5_5 1 add_value
execute if score @s weapon6_awake matches 1 run attribute @s minecraft:attack_damage modifier add panling:mod_1_5_5_5_5 0.1 add_multiplied_total
execute if score @s weapon6_awake matches 2 run attribute @s minecraft:attack_damage modifier add panling:mod_1_5_5_5_5 0.15 add_multiplied_total
execute if score @s weapon6_awake matches 3 run attribute @s minecraft:attack_damage modifier add panling:mod_1_5_5_5_5 0.2 add_multiplied_total

