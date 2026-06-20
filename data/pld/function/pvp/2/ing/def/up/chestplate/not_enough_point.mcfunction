#重置按钮
clear @s leather_chestplate[custom_data={id:"panling:pvp_chestplate_up"}]
item replace entity @s inventory.23 with leather_chestplate[custom_name='{"translate":"pl.pvp.button.name.chestplate_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.chestplate_upa"}','{"translate":"pl.pvp.button.lore.chestplate_upb"}'],custom_data={button:1,id:"panling:pvp_chestplate_up"}]
tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}