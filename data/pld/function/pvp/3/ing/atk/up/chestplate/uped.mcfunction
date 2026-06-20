#重置按钮
clear @s leather_chestplate[custom_data={id:"panling:pvp_chestplate_uped"}]
item replace entity @s inventory.23 with leather_chestplate[minecraft:enchantments={minecraft:protection:1},custom_name='{"translate":"pl.pvp.button.name.chestplate_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.chestplate_uped"}'],custom_data={button:1,id:"panling:pvp_chestplate_uped"}]

tellraw @s {"translate":"pl.info.uped"}

