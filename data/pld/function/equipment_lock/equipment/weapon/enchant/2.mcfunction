execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{enchant_id:2}}}]} run execute store result score @s archer_damage1_enchanted run data get block ~ 255 ~ Items[{slot:0}].tag.enchant_lvl 10
execute unless block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{enchant_id:2}}}]} run scoreboard players reset @s archer_damage1_enchanted
