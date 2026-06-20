#重置按钮
clear @s wooden_axe[custom_data={id:"panling:pvp_weapon_ranged_up"}]
item replace entity @s inventory.18 with wooden_axe[custom_model_data=3,hide_additional_tooltip={},custom_name='{"translate":"pl.pvp.button.name.weapon_ranged_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upa"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upb"}',],custom_data={button:1,id:"panling:pvp_weapon_ranged_up"}]

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}