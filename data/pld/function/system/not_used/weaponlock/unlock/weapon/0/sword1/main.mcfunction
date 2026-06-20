data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:5}
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.4}
data modify block ~ 255 ~ Items[0].tag.Enchantments set value [{id:"smite",lvl:1}]
scoreboard players set @s weapon_rare 1
scoreboard players set @s weapon_branch 1
scoreboard players set @s success 1