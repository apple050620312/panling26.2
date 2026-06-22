#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_axe 1
#删除物品
clear @s diamond_axe
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_melee_up"}]
#给予物品
give @s diamond_axe[minecraft:enchantments={fire_aspect:1},custom_name='[{"translate":"pl.pvp3.item.name.def_axe"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.def_axe1"}','{"translate":"pl.pvp3.item.lore.def_axe2"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"8","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":"pl.lore.fire_aspect"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},custom_data={id:"panling:pvp3_def_axe",pvp:1,AttributeModifiers:[{slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:8},{slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2.4}]}]
#重置按钮
item replace entity @s inventory.9 with wooden_axe[minecraft:custom_model_data={floats:[4]},minecraft:enchantments={protection:1},custom_name='{"translate":"pl.pvp.button.name.weapon_melee_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}'],custom_data={button:1,id:"panling:pvp_weapon_melee_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
