#重置按钮
clear @s lapis_lazuli[custom_data={id:"panling:pvp3_def_blessing_uped"}]
item replace entity @s inventory.0 with lapis_lazuli[minecraft:enchantments={protection:1},custom_name='{"translate":"pl.pvp.button.name.blessing_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.blessing_uped"}'],custom_data={id:"panling:pvp3_def_blessing_uped",button:1}]

tellraw @s {"translate":"pl.info.uped"}

