function pld:system/attribute/clear/weapon_skill

scoreboard players set @s weapon_rare 0
scoreboard players reset @s weapon_branch

attribute @s armor modifier remove 1-5-5-5-5
attribute @s armor_toughness modifier remove 1-5-5-5-5
attribute @s max_health modifier remove 1-5-5-5-5
attribute @s movement_speed modifier remove 1-5-5-5-5
attribute @s knockback_resistance modifier remove 1-5-5-5-5
attribute @s attack_damage modifier remove 1-5-5-5-5

