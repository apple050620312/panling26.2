#重置按钮
clear @s potion{id:"panling:pvp2_bought_atk_potion"}
item replace entity @s inventory.10 with potion{CustomPotionColor:16426,id:"panling:pvp2_bought_atk_potion",display:{Name:'{"translate":"pl.pvp.button.name.buy_atk_potion"}',Lore:['{"translate":"pl.pvp.button.lore.bought_atk_potion"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.bought"}

