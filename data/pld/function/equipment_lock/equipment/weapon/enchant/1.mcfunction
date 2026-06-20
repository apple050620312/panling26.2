execute if block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{enchant_id:1}}}]} run execute store result score @s attack_damage1_enchanted run data get block ~ 255 ~ Items[{Slot:0b}].tag.enchant_lvl 10
scoreboard players set @s temp 150
scoreboard players operation @s attack_damage1_enchanted *= @s temp
scoreboard players operation @s attack_damage1_enchanted /= 100 int
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{enchant_id:1}}}]} run scoreboard players reset @s attack_damage1_enchanted
scoreboard players reset @s temp 
