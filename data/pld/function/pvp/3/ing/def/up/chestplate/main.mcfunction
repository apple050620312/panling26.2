#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_chest 1
#更新物品
clear @s chainmail_chestplate[custom_data={id:"panling:pvp3_def_chestplate"}]
item replace entity @s armor.chest with chainmail_chestplate[custom_name='[{"translate":"pl.pvp3.item.name.def_chestplate"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"5","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":"pl.pvp.item.lore.protection"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:protection":1,"minecraft:projectile_protection":1},custom_data={id:"panling:pvp3_def_chestplate",pvp:1,AttributeModifiers:[{Slot:"chest",UUID:[I;2,2,2,2],Operation:0,AttributeName:"minecraft:armor",Amount:5}]}]

#重置按钮
clear @s leather_chestplate[custom_data={id:"panling:pvp_chestplate_up"}]
item replace entity @s inventory.23 with leather_helmet[minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.pvp.button.name.helmet_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}'],custom_data={button:1,id:"panling:pvp_helmet_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
