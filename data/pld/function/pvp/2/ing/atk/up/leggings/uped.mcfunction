#重置按钮
clear @s leather_leggings[custom_data={id:"panling:pvp_leggings_uped"}]
item replace entity @s inventory.24 with leather_leggings[hide_additional_tooltip={},enchantments={levels:{"minecraft:protection":1}},custom_name='{"translate":"pl.pvp.button.name.leggings_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.leggings_uped"}',],custom_data={button:1,id:"panling:pvp_leggings_uped"}]

tellraw @s {"translate":"pl.info.uped"}

