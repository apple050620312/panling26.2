#重置按钮
clear @s leather_helmet[custom_data={id:"panling:pvp_helmet_up"}]
item replace entity @s inventory.22 with leather_helmet[custom_name='{"translate":"pl.pvp.button.name.helmet_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.helmet_upa"}','{"translate":"pl.pvp.button.lore.helmet_upb"}'],custom_data={button:1,id:"panling:pvp_helmet_up"}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}