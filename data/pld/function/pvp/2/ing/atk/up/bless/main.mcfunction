#扣分
scoreboard players remove @s pvp_point 4
#标记
scoreboard players set @s up_bless 1

#重置按钮
clear @s cocoa_beans[custom_data={id:"panling:pvp2_atk_blessing_up"}]
item replace entity @s inventory.0 with cocoa_beans[enchantments={levels:{"minecraft:protection":1}},custom_name='{"translate":"pl.pvp.button.name.blessing_up"}',lore=['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.blessing_uped"}',],hide_additional_tooltip={},custom_data={id:"panling:pvp2_atk_blessing_uped",button:1}]


#信息
tellraw @s {"translate":"pl.info.enough_point"}
