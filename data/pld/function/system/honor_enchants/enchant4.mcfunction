#计算血量百分比
execute store result score @s max_hp run attribute @s max_health get
scoreboard players operation @s hp_precent = @s hp
scoreboard players operation @s hp_precent *= 100 int
scoreboard players operation @s hp_precent /= @s max_hp

attribute @s movement_speed modifier add 7-7-7-7-7 "时装附灵速度值" 0.2 multiply_base
attribute @s[scores={hp_precent=100}] movement_speed modifier add 7-7-7-7-8 "时装附灵速度值" 0.2 multiply_base
