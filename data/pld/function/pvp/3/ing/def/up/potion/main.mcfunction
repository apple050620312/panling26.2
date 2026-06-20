#扣分
scoreboard players remove @s pvp_point 1
#标记
scoreboard players set @s pvp3_defpotion 1
#更新物品

give @s minecraft:potion[hide_additional_tooltip={},custom_name='{"translate":"pl.pvp3.item.name.def_pill"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.def_pill1"}','{"translate":"pl.pvp3.item.lore.def_pill2"}'],custom_data={id:"panling:pvp3_def_pill",CustomPotionColor:8227,CustomPotionEffects:[{Amplifier:4b,Duration:600,Id:22b},{Amplifier:0b,Duration:600,Id:10b}]}]

#重置按钮
clear @s potion[custom_data={id:"panling:pvp3_buy_def3_potion"}]
item replace entity @s inventory.10 with potion[custom_name='{"translate":"pl.pvp.button.name.buy_def3_potion"}',lore=['{"translate":"pl.pvp.button.lore.bought_def3_potion"}'],hide_additional_tooltip={},custom_data={CustomPotionColor:16426,id:"panling:pvp3_bought_def_potion"}]

#信息
tellraw @s {"translate":"pl.info.item_enough_point"}
