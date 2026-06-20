#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 102

#功能按键-外观

#
item replace entity @s enderchest.10 with minecraft:leather_boots[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.tail"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:10201}]


#item replace entity @s enderchest.12 with minecraft:leather_chestplate{clickable:1,to_screen:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.skin"}',Lore:['{"translate":"pl.chest_menu.not_open"}']}}





#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:1}]
