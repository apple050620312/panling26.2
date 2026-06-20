#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_head 1
#更新物品
clear @s chainmail_helmet[custom_data={id:"panling:pvp3_def_helmet"}]
item replace entity @s armor.head with chainmail_helmet[custom_name='[{"translate":"pl.pvp3.item.name.def_helmet"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"4","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},minecraft:enchantments={minecraft:binding_curse:1,minecraft:projectile_protection:1},custom_data={id:"panling:pvp3_def_helmet",pvp:1,AttributeModifiers:[{Slot:"head",UUID:[I;1,1,1,1],Operation:0,AttributeName:"minecraft:armor",Amount:4}]}]

#重置按钮
clear @s leather_helmet[custom_data={id:"panling:pvp_helmet_up"}]
item replace entity @s inventory.22 with leather_helmet[minecraft:enchantments={minecraft:protection:1},custom_name='{"translate":"pl.pvp.button.name.helmet_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}'],custom_data={button:1,id:"panling:pvp_helmet_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
