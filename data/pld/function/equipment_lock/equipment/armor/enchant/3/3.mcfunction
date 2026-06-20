execute if block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{limit:1}}}]} run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."projectile_protection" set value 1
execute if block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{limit:1}}}]} run scoreboard players add @s equipment_arrow_protection_multiply_base 8
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{limit:1}}}]} run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."projectile_protection" set value 3
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,components:{"minecraft:custom_data":{limit:1}}}]} run scoreboard players add @s equipment_arrow_protection_multiply_base 24

