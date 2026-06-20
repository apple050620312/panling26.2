#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_axe 1
#给予物品
clear @s golden_axe
give @s golden_axe{id:"panling:pvp2_atk_axe",pvp:1,Enchantments:[{id:"fire_aspect",lvl:1s}],display:{Name:'[{"translate":"pl.pvp2.item.name.atk_axe"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_axe"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"10","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1","color":"white","italic":false}]','{"translate":"pl.lore.fire_aspect"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}',]},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:10},{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-3}],HideFlags:63,Unbreakable:1b}
#重置按钮
clear @s wooden_axe{id:"panling:pvp_weapon_melee_up"}
item replace entity @s inventory.9 with wooden_axe{CustomModelData:4,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_melee_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_melee_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}',]}}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
