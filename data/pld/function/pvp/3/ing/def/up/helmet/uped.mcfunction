#重置按钮
clear @s leather_helmet[custom_data={id:"panling:pvp_helmet_uped"}]
item replace entity @s inventory.22 with leather_helmet[minecraft:enchantments={minecraft:protection:1},custom_name='{"translate":"pl.pvp.button.name.helmet_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}'],custom_data={button:1,id:"panling:pvp_helmet_uped"}]

tellraw @s {"translate":"pl.info.uped"}

