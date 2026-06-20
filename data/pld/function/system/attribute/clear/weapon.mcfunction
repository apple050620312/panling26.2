function pld:system/attribute/clear/weapon_skill

scoreboard players set @s weapon_rare 0
scoreboard players reset @s weapon_branch

attribute @s generic.armor modifier remove 1-5-5-5-5
attribute @s generic.armor_toughness modifier remove 1-5-5-5-5
attribute @s generic.max_health modifier remove 1-5-5-5-5
attribute @s generic.movement_speed modifier remove 1-5-5-5-5
attribute @s generic.knockback_resistance modifier remove 1-5-5-5-5
attribute @s generic.attack_damage modifier remove 1-5-5-5-5

