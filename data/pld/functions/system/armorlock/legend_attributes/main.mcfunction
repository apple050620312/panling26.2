attribute @s generic.attack_damage modifier remove 9-1-1-1-1
attribute @s generic.attack_damage modifier remove 9-2-2-2-2
attribute @s generic.attack_damage modifier remove 9-3-3-3-3
attribute @s generic.attack_damage modifier remove 9-4-4-4-4

attribute @s generic.attack_damage modifier remove 10-1-1-1-1
attribute @s generic.attack_damage modifier remove 10-2-2-2-2
attribute @s generic.attack_damage modifier remove 10-3-3-3-3
attribute @s generic.attack_damage modifier remove 10-4-4-4-4

attribute @s generic.attack_speed modifier remove 9-1-1-1-1
attribute @s generic.attack_speed modifier remove 9-2-2-2-2
attribute @s generic.attack_speed modifier remove 9-3-3-3-3
attribute @s generic.attack_speed modifier remove 9-4-4-4-4

attribute @s generic.movement_speed modifier remove 9-1-1-1-1
attribute @s generic.movement_speed modifier remove 9-2-2-2-2
attribute @s generic.movement_speed modifier remove 9-3-3-3-3
attribute @s generic.movement_speed modifier remove 9-4-4-4-4

execute if entity @s[scores={job=0}] run function pld:system/armorlock/legend_attributes/attributes0
execute if entity @s[scores={job=1}] run function pld:system/armorlock/legend_attributes/attributes1
