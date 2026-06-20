#重置按钮
clear @s wooden_axe{id:"panling:pvp_weapon_ranged_uped"}
item replace entity @s inventory.18 with wooden_axe{CustomModelData:3,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_ranged_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_ranged_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_ranged_uped"}',]}}

tellraw @s {"translate":"pl.info.uped"}

