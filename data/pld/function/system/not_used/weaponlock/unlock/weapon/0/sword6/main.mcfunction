execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:0}}}]} run function pld:system/weaponlock/unlock/weapon/0/sword6/0
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:1}}}]} run function pld:system/weaponlock/unlock/weapon/0/sword6/1
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:2}}}]} run function pld:system/weaponlock/unlock/weapon/0/sword6/2
execute if block ~ 255 ~ chest{Items:[{slot:0,components:{custom_data:{awake:3}}}]} run function pld:system/weaponlock/unlock/weapon/0/sword6/3
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2}
data modify block ~ 255 ~ Items[0].tag.Enchantments set value [{id:"knockback",lvl:1},{id:"fire_aspect",lvl:5}]

scoreboard players set @s weapon_rare 6
scoreboard players set @s weapon_branch 1
scoreboard players set @s success 1

