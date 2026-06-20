#重置按钮
clear @s leather_helmet{id:"panling:pvp_helmet_uped"}
item replace entity @s inventory.22 with leather_helmet{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_helmet_uped",display:{Name:'{"translate":"pl.pvp.button.name.helmet_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.helmet_uped"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.uped"}

