execute if block ~ 255 ~ chest{Items:[{Slot:0b,tag:{limit:1}}]} run data modify block ~ 255 ~ Items[0].tag.Enchantments append value {id:"fire_protection",lvl:2}
execute if block ~ 255 ~ chest{Items:[{Slot:0b,tag:{limit:1}}]} run scoreboard players add @s equipment_fire_protection_multiply_base 16
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,tag:{limit:1}}]} run data modify block ~ 255 ~ Items[0].tag.Enchantments append value {id:"fire_protection",lvl:4}
execute unless block ~ 255 ~ chest{Items:[{Slot:0b,tag:{limit:1}}]} run scoreboard players add @s equipment_fire_protection_multiply_base 32
