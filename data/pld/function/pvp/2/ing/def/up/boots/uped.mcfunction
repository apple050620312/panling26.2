#重置按钮
clear @s leather_boots{id:"panling:pvp_boots_uped"}
item replace entity @s inventory.25 with leather_boots{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_boots_uped",display:{Name:'{"translate":"pl.pvp.button.name.boots_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.boots_uped"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.uped"}

