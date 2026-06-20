#计算血量百分比
execute store result score @s max_hp run attribute @s generic.max_health get
scoreboard players operation @s hp_precent = @s hp
scoreboard players operation @s hp_precent *= 100 int
scoreboard players operation @s hp_precent /= @s max_hp

attribute @s minecraft:generic.movement_speed modifier add panling:uuid_7_7_7_7_7 0.2 add_multiplied_base
attribute @s[scores={hp_precent=100}] minecraft:generic.movement_speed modifier add panling:uuid_7_7_7_7_8 0.2 add_multiplied_base
