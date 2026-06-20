#重置按钮
clear @s lapis_lazuli[custom_data={id:"panling:pvp3_def_blessing_up"}]
item replace entity @s inventory.0 with lapis_lazuli[custom_name='{"translate":"pl.pvp.button.name.blessing_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.blessing_upa"}','{"translate":"pl.pvp.button.lore.blessing_upb"}','{"translate":"pl.pvp.button.lore.xian3a"}','{"translate":"pl.pvp.button.lore.xian3b"}'],custom_data={id:"panling:pvp3_def_blessing_up",button:1}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}