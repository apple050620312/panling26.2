#重置按钮
clear @s potion{id:"panling:pvp2_buy_atk_potion"}
item replace entity @s inventory.10 with potion{CustomPotionColor:16426,id:"panling:pvp2_buy_atk_potion",display:{Name:'{"translate":"pl.pvp.button.name.buy_atk_potion"}',Lore:['{"translate":"pl.pvp.button.lore.click_buy"}','{"translate":"pl.pvp.button.lore.buy_atk_potiona"}','{"translate":"pl.pvp.button.lore.buy_atk_potionb"}',]},HideFlags:63}


tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}