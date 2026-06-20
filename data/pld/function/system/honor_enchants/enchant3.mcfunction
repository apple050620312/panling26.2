attribute @s generic.max_health modifier add 7-7-7-7-7 "时装附灵生命值" 5 add
#计算血量换算
execute store result score @s max_hp run attribute @s generic.max_health get
scoreboard players operation @s hp_damage = @s max_hp
scoreboard players operation @s hp_damage /= 10 int


scoreboard players operation @s hp_damage *= 10 int
