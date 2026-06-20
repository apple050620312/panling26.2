#重置按钮
clear @s cocoa_beans[custom_data={id:"panling:pvp2_atk_blessing_up"}]
item replace entity @s inventory.0 with cocoa_beans[custom_name='{"translate":"pl.pvp.button.name.blessing_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.blessing_upa"}','{"translate":"pl.pvp.button.lore.blessing_upb"}','{"translate":"pl.pvp.button.lore.ren2a"}','{"translate":"pl.pvp.button.lore.ren2b"}',],custom_data={id:"panling:pvp2_atk_blessing_up",button:1}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}