#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_chest 1
#更新物品
clear @s leather_helmet{id:"panling:pvp2_def_chestplate"}
item replace entity @s armor.chest with leather_chestplate{id:"panling:pvp2_def_chestplate",pvp:1,display:{color:8375321,Name:'[{"translate":"pl.pvp2.item.name.def_chestplate"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":"pl.pvp.item.lore.protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},AttributeModifiers:[{Slot:"chest",UUID:[I;2,2,2,2],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s},{id:"protection",lvl:1s},{id:"projectile_protection",lvl:1s}]}

#重置按钮
clear @s leather_chestplate{id:"panling:pvp_chestplate_up"}
item replace entity @s inventory.23 with leather_helmet{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_helmet_uped",display:{Name:'{"translate":"pl.pvp.button.name.helmet_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}',]},HideFlags:63}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
