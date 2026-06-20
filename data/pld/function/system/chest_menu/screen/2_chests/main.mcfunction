#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 2
execute unless score @s chests_enabled matches 1.. run scoreboard players set @s chests_enabled 1

#功能按键
execute if score @s chests_enabled matches 1..21 store result storage pld:macro id int 1 run scoreboard players get @s chests_enabled\nexecute if score @s chests_enabled matches 1..21 run function pld:system/chest_menu/screen/2_chests/screens/macro_call with storage pld:macro\n
#设置返回按键
item replace entity @s enderchest.8 with minecraft:gray_stained_glass_pane[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.nothing"}',custom_data={clickable:1,reset_self_i:4}]
item replace entity @s enderchest.17 with minecraft:gray_stained_glass_pane[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.nothing"}',custom_data={clickable:1,reset_self_i:5}]
item replace entity @s enderchest.26 with minecraft:clock[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:0}]
