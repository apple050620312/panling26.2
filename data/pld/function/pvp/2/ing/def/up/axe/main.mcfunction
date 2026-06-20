#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_axe 1
#删除物品
clear @s iron_axe
clear @s wooden_axe{id:"panling:pvp_weapon_melee_up"}
#给予物品
give @s iron_axe{id:"panling:pvp2_def_axe",pvp:1,Enchantments:[{id:"knockback",lvl:1s}],display:{Name:'[{"translate":"pl.pvp2.item.name.def_axe"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.def_axe"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"7","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":"pl.lore.knockback"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}',]},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:7},{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.4}],HideFlags:63,Unbreakable:1b}
#重置按钮
item replace entity @s inventory.9 with wooden_axe{CustomModelData:4,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_melee_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_melee_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}',]}}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
