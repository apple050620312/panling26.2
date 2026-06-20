#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_axe 1
#给予物品
clear @s iron_axe
give @s iron_axe[minecraft:enchantments={"minecraft:knockback":1},custom_name='[{"translate":"pl.pvp3.item.name.atk_axe"},{"text":"+","color":"aqua","italic":false}]',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.atk_axe1"}','{"translate":"pl.pvp3.item.lore.atk_axe2"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"8","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":"pl.lore.knockback"}','{"translate":""}','{"translate":"pl.pvp.item.uped"}'],unbreakable={},custom_data={id:"panling:pvp3_atk_axe",pvp:1,AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:8},{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-2.4}]}]
#重置按钮
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_melee_up"}]
item replace entity @s inventory.9 with wooden_axe[minecraft:custom_model_data={floats:[4]},minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.pvp.button.name.weapon_melee_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}'],custom_data={button:1,id:"panling:pvp_weapon_melee_uped"}]

#信息
tellraw @s {"translate":"pl.info.enough_point"}
