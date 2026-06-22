data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:12}
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2}
data modify block ~ 255 ~ Items[0].tag.Enchantments set value [{id:"fire_aspect",lvl:2}]
scoreboard players set @s weapon_rare 3
scoreboard players set @s weapon_branch 0
scoreboard players set @s success 1