#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_legs 1
#更新物品
clear @s leather_leggings[custom_data={id:"panling:pvp3_def_leggings"}]
item replace entity @s armor.legs with chainmail_leggings[custom_name='[{"translate":"pl.pvp3.item.name.def_leggings"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"5","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":"pl.pvp.item.lore.protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},minecraft:enchantments={binding_curse:1,protection:1,projectile_protection:1},custom_data={id:"panling:pvp3_def_leggings",pvp:1,AttributeModifiers:[{slot:"legs",UUID:[I;3,3,3,3],Operation:0,AttributeName:"minecraft:armor",Amount:5}]}]

#重置按钮
clear @s leather_leggings[custom_data={id:"panling:pvp_leggings_up"}]
item replace entity @s inventory.24 with leather_leggings[minecraft:enchantments={protection:1},custom_name='{"translate":"pl.pvp.button.name.leggings_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.leggings_uped"}'],custom_data={button:1,id:"panling:pvp_leggings_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
