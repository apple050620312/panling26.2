#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_legs 1
#更新物品
clear @s leather_leggings{id:"panling:pvp2_atk_leggings"}
item replace entity @s armor.legs with leather_leggings{id:"panling:pvp2_atk_leggings",pvp:1,display:{color:10040115,Name:'[{"translate":"pl.pvp2.item.name.atk_leggings"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":"pl.pvp.item.lore.protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},AttributeModifiers:[{Slot:"legs",UUID:[I;3,3,3,3],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s},{id:"protection",lvl:1s},{id:"projectile_protection",lvl:1s}]}

#重置按钮
clear @s leather_leggings{id:"panling:pvp_leggings_up"}
item replace entity @s inventory.24 with leather_leggings{HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_leggings_uped",display:{Name:'{"translate":"pl.pvp.button.name.leggings_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.leggings_uped"}',]}}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
