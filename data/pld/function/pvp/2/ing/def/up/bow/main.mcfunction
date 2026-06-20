#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_bow 1
#删除物品
clear @s bow
clear @s wooden_axe{id:"panling:pvp_weapon_ranged_up"}
#给予物品2
give @s bow{id:"panling:pvp2_def_bow",pvp:1,display:{Name:'[{"translate":"pl.pvp2.item.name.def_bow"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.def_bow"}','{"translate":""}','[{"translate":"pl.attribute.bow_power"},{"text":"2","color":"white","italic":false}]','{"translate":"pl.lore.punch"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"power",lvl:1s},{id:"punch",lvl:2s},{id:"infinity",lvl:1s}]}
#重置按钮
item replace entity @s inventory.18 with wooden_axe{CustomModelData:3,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_ranged_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_ranged_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_ranged_uped"}']}}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
