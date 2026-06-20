#重置按钮
clear @s purple_dye{id:"panling:pvp3_atk_blessing_up"}
item replace entity @s inventory.0 with purple_dye{id:"panling:pvp3_atk_blessing_up",button:1,display:{Name:'{"translate":"pl.pvp.button.name.blessing_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.blessing_upa"}','{"translate":"pl.pvp.button.lore.blessing_upb"}','{"translate":"pl.pvp.button.lore.yao3a"}','{"translate":"pl.pvp.button.lore.yao3b"}',]}}

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}