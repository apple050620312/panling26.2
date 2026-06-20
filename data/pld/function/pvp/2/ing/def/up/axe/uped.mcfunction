#重置按钮
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_melee_uped"}]
item replace entity @s inventory.9 with wooden_axe[minecraft:custom_model_data={floats:[4]},minecraft:enchantments={minecraft:protection:1},custom_name='{"translate":"pl.pvp.button.name.weapon_melee_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}'],custom_data={button:1,id:"panling:pvp_weapon_melee_uped"}]

tellraw @s {"translate":"pl.info.uped"}

