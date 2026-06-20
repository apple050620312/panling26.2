execute if block ~ 255 ~ chest{Items:[{Slot:0b,components:{custom_data:{limit:1}}}]} run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."fire_protection" set value 2
execute if block ~ 255 ~ chest{Items:[{Slot:0b,components:{custom_data:{limit:1}}}]} run scoreboard players add @s equipment_fire_protection_multiply_base 16
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,components:{custom_data:{limit:1}}}]} run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."fire_protection" set value 3
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,components:{custom_data:{limit:1}}}]} run scoreboard players add @s equipment_fire_protection_multiply_base 24


