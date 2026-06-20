#重置按钮
clear @s potion[custom_data={id:"panling:pvp3_bought_def_potion"}]
item replace entity @s inventory.10 with potion[custom_name='{"translate":"pl.pvp.button.name.buy_def3_potion"}',lore=['{"translate":"pl.pvp.button.lore.bought_def3_potion"}'],hide_additional_tooltip={},custom_data={CustomPotionColor:16426,id:"panling:pvp3_bought_def_potion"}]

tellraw @s {"translate":"pl.info.bought"}

