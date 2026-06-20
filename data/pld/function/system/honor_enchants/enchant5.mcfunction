#计算血量百分比
execute store result score @s max_hp run attribute @s max_health get
scoreboard players operation @s hp_precent = @s hp
scoreboard players operation @s hp_precent *= 100 int
scoreboard players operation @s hp_precent /= @s max_hp

effect give @s strength 1 0
effect give @s[scores={hp_precent=..50}] strength 1 2
effect give @s[scores={hp_precent=..50}] speed 1 0
