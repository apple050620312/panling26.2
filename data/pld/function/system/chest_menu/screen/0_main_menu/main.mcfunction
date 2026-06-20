#语境 
#   pld:system Temp 玩家实体数据
#   pld:system Temp_ender_data 玩家菜单数据
#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 0

#个人信息面板
item replace entity @s enderchest.10 with minecraft:player_head[custom_name='{"translate":"pl.chest_menu.to_screen1"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:1}]
item modify entity @s enderchest.10 pld:fill_player_head

#箱子储存内容
item replace entity @s enderchest.12 with minecraft:chest[custom_name='{"translate":"pl.chest_menu.to_screen2"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:2}]

#邮件
item replace entity @s enderchest.14 with minecraft:blaze_powder[custom_name='{"translate":"pl.chest_menu.to_screen3"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:3}]

#设置
item replace entity @s enderchest.16 with minecraft:brewing_stand[custom_name='{"translate":"pl.chest_menu.to_screen4"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:4}]

#重置右边按钮
item replace entity @s enderchest.8 with minecraft:gray_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.nothing"}',custom_data={clickable:1,reset_self_i:4}]
item replace entity @s enderchest.17 with minecraft:gray_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.nothing"}',custom_data={clickable:1,reset_self_i:5}]
item replace entity @s enderchest.26 with minecraft:gray_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.nothing"}',custom_data={clickable:1,reset_self_i:6}]
