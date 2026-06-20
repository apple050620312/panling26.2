attribute @s max_health modifier add panling:mod_7_7_7_7_7 5 add_value
#计算血量换算
execute store result score @s max_hp run attribute @s max_health get
scoreboard players operation @s hp_damage = @s max_hp
scoreboard players operation @s hp_damage /= 10 int


scoreboard players operation @s hp_damage *= 10 int
