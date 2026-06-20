#重置按钮
clear @s wooden_axe{id:"panling:pvp_weapon_ranged_up"}
item replace entity @s inventory.18 with wooden_axe{CustomModelData:3,HideFlags:63,button:1,id:"panling:pvp_weapon_ranged_up",display:{Name:'{"translate":"pl.pvp.button.name.weapon_ranged_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upa"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upb"}',]}}

tellraw @s[scores={inbuy_area=1}] {"translate":"pl.info.not_enough_point"}
tellraw @s[scores={inbuy_area=0}] {"translate":"pl.info.leave_buy_area"}