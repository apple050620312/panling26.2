#扣分
scoreboard players remove @s pvp_point 1
#标记
scoreboard players set @s pvp2_atkpotion 1
#更新物品

give @s minecraft:potion[hide_additional_tooltip={},custom_name='{"translate":"pl.pvp2.item.name.atk_pill"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_pill"}',],custom_data={id:"panling:pvp2_atk_pill",CustomPotionColor:16426,CustomPotionEffects:[{Amplifier:2b,Duration:200,Id:1b},{Amplifier:0b,Duration:200,Id:5b},{Amplifier:1b,Duration:200,Id:8b}]}]

#重置按钮
clear @s potion[custom_data={id:"panling:pvp2_buy_atk_potion"}]
item replace entity @s inventory.10 with potion[custom_name='{"translate":"pl.pvp.button.name.buy_atk_potion"}',lore=['{"translate":"pl.pvp.button.lore.bought_atk_potion"}',],hide_additional_tooltip={},custom_data={CustomPotionColor:16426,id:"panling:pvp2_bought_atk_potion"}]

#信息
tellraw @s {"translate":"pl.info.item_enough_point"}
