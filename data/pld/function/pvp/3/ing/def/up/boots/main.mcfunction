#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_feet 1
#更新物品
clear @s chainmail_boots[custom_data={id:"panling:pvp3_def_boots"}]
item replace entity @s armor.feet with chainmail_boots[custom_name='[{"translate":"pl.pvp3.item.name.def_boots"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"4","color":"white","italic":false}]','[{"translate":"pl.attribute.knockback_resistance"},{"text":"100%","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},minecraft:enchantments={binding_curse:1},custom_data={id:"panling:pvp3_def_boots",pvp:1,AttributeModifiers:[{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:armor",Amount:4},{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:knockback_resistance",Amount:1.0}]}]

#重置按钮
clear @s leather_boots[custom_data={id:"panling:pvp_boots_up"}]
item replace entity @s inventory.25 with leather_boots[minecraft:enchantments={protection:1},custom_name='{"translate":"pl.pvp.button.name.boots_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.boots_uped"}'],custom_data={button:1,id:"panling:pvp_boots_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
