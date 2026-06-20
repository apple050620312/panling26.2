#重置按钮
clear @s leather_boots{id:"panling:pvp_boots_up"}
item replace entity @s inventory.25 with leather_boots{button:1,id:"panling:pvp_boots_up",display:{Name:'{"translate":"pl.pvp.button.name.boots_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.boots_upa"}','{"translate":"pl.pvp.button.lore.boots_upb"}',]},HideFlags:63}

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}