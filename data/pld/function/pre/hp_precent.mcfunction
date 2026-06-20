#检查玩家生命值百分比
execute store result score @s max_hp run attribute @s generic.max_health get
scoreboard players operation @s hp_precent = @s hp
scoreboard players operation @s hp_precent *= 100 int
scoreboard players operation @s hp_precent /= @s max_hp

