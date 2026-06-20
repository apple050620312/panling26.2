#重置按钮
clear @s leather_leggings{id:"panling:pvp_leggings_uped"}
item replace entity @s inventory.24 with leather_leggings{HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_leggings_uped",display:{Name:'{"translate":"pl.pvp.button.name.leggings_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.leggings_uped"}',]}}

tellraw @s {"translate":"pl.info.uped"}

