#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_bow 1
#更换物品
clear @s bow
give @s bow{id:"panling:pvp2_atk_bow",pvp:1,display:{Name:'[{"translate":"pl.pvp2.item.name.atk_bow"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_bow"}','{"translate":""}','[{"translate":"pl.attribute.bow_power"},{"text":"2","color":"white","italic":false}]','{"translate":"pl.lore.flame"}','{"translate":"pl.lore.punch"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1s},{id:"power",lvl:1s},{id:"punch",lvl:1s},{id:"infinity",lvl:1s}]}
#重置按钮
clear @s wooden_axe{id:"panling:pvp_weapon_ranged_up"}

item replace entity @s inventory.18 with wooden_axe{CustomModelData:3,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_ranged_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_ranged_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_ranged_uped"}']}}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
