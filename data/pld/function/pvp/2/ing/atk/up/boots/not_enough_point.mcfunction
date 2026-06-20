#重置按钮
clear @s leather_boots[custom_data={id:"panling:pvp_boots_up"}]
item replace entity @s inventory.25 with leather_boots[custom_name='{"translate":"pl.pvp.button.name.boots_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.boots_upa"}','{"translate":"pl.pvp.button.lore.boots_upb"}',],hide_additional_tooltip={},custom_data={button:1,id:"panling:pvp_boots_up"}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}