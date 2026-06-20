#重置按钮
clear @s leather_chestplate{id:"panling:pvp_chestplate_uped"}
item replace entity @s inventory.23 with leather_chestplate{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_chestplate_uped",display:{Name:'{"translate":"pl.pvp.button.name.chestplate_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.chestplate_uped"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.uped"}

