#层数+1
execute unless score @s weapon_skill_bow6_lvl matches 9.. run scoreboard players add @s weapon_skill_bow6_lvl 1
#根据玩家当前状态赋予移动速度加成
attribute @s[scores={weapon_skill_bow6_lvl=1..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_1 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=2..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_2 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=3..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_3 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=4..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_4 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=5..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_5 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=6..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_6 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=7..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_7 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=8..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_8 0.01 add_multiplied_base
attribute @s[scores={weapon_skill_bow6_lvl=9..}] minecraft:generic.movement_speed modifier add panling:uuid_11_5_5_5_9 0.01 add_multiplied_base
