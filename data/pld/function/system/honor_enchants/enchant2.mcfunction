#计算血量百分比
execute store result score @s max_hp run attribute @s generic.max_health get
scoreboard players operation @s hp_precent = @s hp
scoreboard players operation @s hp_precent *= 100 int
scoreboard players operation @s hp_precent /= @s max_hp

tag @s remove honor_enchant2
tag @s[scores={hp_precent=50..}] remove honor_enchant2_b
tag @s[scores={hp_precent=20..}] remove honor_enchant2_c


tag @s add honor_enchant2
tag @s[scores={hp_precent=20..49}] add honor_enchant2_b
tag @s[scores={hp_precent=..19}] add honor_enchant2_c