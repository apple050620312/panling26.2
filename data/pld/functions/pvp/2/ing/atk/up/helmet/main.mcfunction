#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_head 1
#更新物品
clear @s leather_helmet{id:"panling:pvp2_atk_helmet"}
item replace entity @s armor.head with leather_helmet{id:"panling:pvp2_atk_helmet",pvp:1,display:{color:10040115,Name:'[{"translate":"pl.pvp2.item.name.atk_helmet"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},AttributeModifiers:[{Slot:"head",UUID:[I;1,1,1,1],Operation:0,AttributeName:"minecraft:generic.armor",Amount:2}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s},{id:"projectile_protection",lvl:1s}]}

#重置按钮
clear @s leather_helmet{id:"panling:pvp_helmet_up"}
item replace entity @s inventory.22 with leather_helmet{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_helmet_uped",display:{Name:'{"translate":"pl.pvp.button.name.helmet_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}',]},HideFlags:63}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
