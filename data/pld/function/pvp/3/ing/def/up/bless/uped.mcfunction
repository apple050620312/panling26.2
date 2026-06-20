#重置按钮
clear @s lapis_lazuli{id:"panling:pvp3_def_blessing_uped"}
item replace entity @s inventory.0 with lapis_lazuli{id:"panling:pvp3_def_blessing_uped",button:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'{"translate":"pl.pvp.button.name.blessing_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.blessing_uped"}',]},HideFlags:63}

tellraw @s {"translate":"pl.info.uped"}

