data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:10}
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2.4}
data modify block ~ 255 ~ Items[0].tag.Enchantments set value [{id:"knockback",lvl:2},{id:"sharpness",lvl:7},{id:"smite",lvl:2},{id:"bane_of_arthropods",lvl:2}]
scoreboard players set @s weapon_rare 5
scoreboard players set @s weapon_branch 1
scoreboard players set @s success 1
