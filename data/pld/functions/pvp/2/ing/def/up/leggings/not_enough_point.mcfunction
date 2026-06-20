#重置按钮
clear @s leather_leggings{id:"panling:pvp_leggings_up"}
item replace entity @s inventory.24 with leather_leggings{HideFlags:63,button:1,id:"panling:pvp_leggings_up",display:{Name:'{"translate":"pl.pvp.button.name.leggings_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.leggings_upa"}','{"translate":"pl.pvp.button.lore.leggings_upb"}',]}}

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}