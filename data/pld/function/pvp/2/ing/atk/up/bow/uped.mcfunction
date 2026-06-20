#重置按钮
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_ranged_uped"}]
item replace entity @s inventory.18 with wooden_axe[minecraft:custom_model_data={floats:[3]},minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.pvp.button.name.weapon_ranged_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_ranged_uped"}'],custom_data={button:1,id:"panling:pvp_weapon_ranged_uped"}]

tellraw @s {"translate":"pl.info.uped"}

