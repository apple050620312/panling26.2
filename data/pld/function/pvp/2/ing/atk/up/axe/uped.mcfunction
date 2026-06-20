#重置按钮
clear @s wooden_axe{id:"panling:pvp_weapon_melee_uped"}
item replace entity @s inventory.9 with wooden_axe{CustomModelData:4,HideFlags:63,button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_weapon_melee_uped",display:{Name:'{"translate":"pl.pvp.button.name.weapon_melee_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.weapon_melee_uped"}']}}

tellraw @s {"translate":"pl.info.uped"}

