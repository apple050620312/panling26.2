function pld:system/attribute/clear/weapon_skill

scoreboard players set @s weapon_rare 0
scoreboard players reset @s weapon_branch

attribute @s armor modifier remove panling:mod_1_5_5_5_5
attribute @s armor_toughness modifier remove panling:mod_1_5_5_5_5
attribute @s max_health modifier remove panling:mod_1_5_5_5_5
attribute @s movement_speed modifier remove panling:mod_1_5_5_5_5
attribute @s knockback_resistance modifier remove panling:mod_1_5_5_5_5
attribute @s attack_damage modifier remove panling:mod_1_5_5_5_5

