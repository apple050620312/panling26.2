#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_bow 1
#更换物品
clear @s bow
give @s bow[custom_name='[{"translate":"pl.pvp3.item.name.atk_bow"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.atk_bow1"}','{"translate":"pl.pvp3.item.lore.atk_bow2"}','{"translate":""}','[{"translate":"pl.attribute.bow_power"},{"text":"3","color":"white","italic":false}]','{"translate":"pl.lore.punch"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},minecraft:enchantments={"minecraft:power":2,"minecraft:punch":1},custom_data={id:"panling:pvp3_atk_bow",pvp:1}]
#重置按钮
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_ranged_up"}]

item replace entity @s inventory.18 with wooden_axe[minecraft:custom_model_data={floats:[3]},minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.pvp.button.name.weapon_ranged_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_ranged_uped"}'],custom_data={button:1,id:"panling:pvp_weapon_ranged_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
