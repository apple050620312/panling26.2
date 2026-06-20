#重置按钮
clear @s leather_chestplate{id:"panling:pvp_chestplate_up"}
item replace entity @s inventory.23 with leather_chestplate{button:1,id:"panling:pvp_chestplate_up",display:{Name:'{"translate":"pl.pvp.button.name.chestplate_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.chestplate_upa"}','{"translate":"pl.pvp.button.lore.chestplate_upb"}',]},HideFlags:63}
tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}