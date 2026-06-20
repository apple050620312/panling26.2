#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_bless 1

#重置按钮
clear @s cocoa_beans{id:"panling:pvp2_atk_blessing_up"}
item replace entity @s inventory.0 with cocoa_beans{id:"panling:pvp2_atk_blessing_uped",button:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'{"translate":"pl.pvp.button.name.blessing_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.blessing_uped"}',]},HideFlags:63}


#信息
tellraw @s {"translate":"pl.info.enough_point"}
