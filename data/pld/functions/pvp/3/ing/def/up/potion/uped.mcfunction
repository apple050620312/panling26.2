#重置按钮
clear @s potion{id:"panling:pvp3_bought_def_potion"}
item replace entity @s inventory.10 with potion{CustomPotionColor:16426,id:"panling:pvp3_bought_def_potion",display:{Name:'{"translate":"pl.pvp.button.name.buy_def3_potion"}',Lore:['{"translate":"pl.pvp.button.lore.bought_def3_potion"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.bought"}

