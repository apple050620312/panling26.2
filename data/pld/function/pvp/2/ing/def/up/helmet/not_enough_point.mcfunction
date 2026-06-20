#重置按钮
clear @s leather_helmet{id:"panling:pvp_helmet_up"}
item replace entity @s inventory.22 with leather_helmet{button:1,id:"panling:pvp_helmet_up",display:{Name:'{"translate":"pl.pvp.button.name.helmet_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.helmet_upa"}','{"translate":"pl.pvp.button.lore.helmet_upb"}',]},HideFlags:63}

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}