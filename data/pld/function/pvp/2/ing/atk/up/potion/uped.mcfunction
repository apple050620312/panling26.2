#重置按钮
clear @s potion[custom_data={id:"panling:pvp2_bought_atk_potion"}]
item replace entity @s inventory.10 with potion[custom_name='{"translate":"pl.pvp.button.name.buy_atk_potion"}',lore=['{"translate":"pl.pvp.button.lore.bought_atk_potion"}'],custom_data={CustomPotionColor:16426,id:"panling:pvp2_bought_atk_potion"}]

tellraw @s {"translate":"pl.info.bought"}

