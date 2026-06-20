#重置按钮
clear @s leather_leggings[custom_data={id:"panling:pvp_leggings_up"}]
item replace entity @s inventory.24 with leather_leggings[custom_name='{"translate":"pl.pvp.button.name.leggings_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.leggings_upa"}','{"translate":"pl.pvp.button.lore.leggings_upb"}'],custom_data={button:1,id:"panling:pvp_leggings_up"}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}