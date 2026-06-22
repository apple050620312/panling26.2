data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:7.5}
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2.4}
data modify block ~ 255 ~ Items[0].tag.Enchantments set value [{id:"knockback",lvl:2},{id:"smite",lvl:2},{id:"bane_of_arthropods",lvl:2},{id:"sharpness",lvl:5}]

#激活武器效果
execute unless score @s weapon_skill_sword4_switch matches 0.. run scoreboard players set @s weapon_skill_sword4_switch 1

scoreboard players set @s weapon_rare 4
scoreboard players set @s weapon_branch 1
scoreboard players set @s success 1

