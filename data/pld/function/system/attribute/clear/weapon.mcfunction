function pld:system/attribute/clear/weapon_skill

scoreboard players set @s weapon_rare 0
scoreboard players reset @s weapon_branch

attribute @s minecraft:generic.armor modifier remove panling:uuid_1_5_5_5_5
attribute @s minecraft:generic.armor_toughness modifier remove panling:uuid_1_5_5_5_5
attribute @s minecraft:generic.max_health modifier remove panling:uuid_1_5_5_5_5
attribute @s minecraft:generic.movement_speed modifier remove panling:uuid_1_5_5_5_5
attribute @s minecraft:generic.knockback_resistance modifier remove panling:uuid_1_5_5_5_5
attribute @s minecraft:generic.attack_damage modifier remove panling:uuid_1_5_5_5_5

