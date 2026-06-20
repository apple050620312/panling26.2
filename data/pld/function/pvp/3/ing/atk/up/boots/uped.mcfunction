#重置按钮
clear @s leather_boots[custom_data={id:"panling:pvp_boots_uped"}]
item replace entity @s inventory.25 with leather_boots[minecraft:enchantments={"minecraft:protection":1},custom_name='{"translate":"pl.pvp.button.name.boots_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.boots_uped"}'],custom_data={button:1,id:"panling:pvp_boots_uped"}]

tellraw @s {"translate":"pl.info.uped"}

