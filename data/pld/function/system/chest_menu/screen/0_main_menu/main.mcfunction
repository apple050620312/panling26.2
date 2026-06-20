#语境 
#   pld:system Temp 玩家实体数据
#   pld:system Temp_ender_data 玩家菜单数据
#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 0

#个人信息面板
item replace entity @s enderchest.10 with minecraft:player_head{clickable:1,to_screen:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_screen1"}',Lore:['{"translate":"pl.chest_menu.sub_menu.lore"}']}}
item modify entity @s enderchest.10 pld:fill_player_head

#箱子储存内容
item replace entity @s enderchest.12 with minecraft:chest{clickable:1,to_screen:2,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_screen2"}',Lore:['{"translate":"pl.chest_menu.sub_menu.lore"}']}}

#邮件
item replace entity @s enderchest.14 with minecraft:blaze_powder{clickable:1,to_screen:3,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_screen3"}',Lore:['{"translate":"pl.chest_menu.sub_menu.lore"}']}}

#设置
item replace entity @s enderchest.16 with minecraft:brewing_stand{clickable:1,to_screen:4,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_screen4"}',Lore:['{"translate":"pl.chest_menu.sub_menu.lore"}']}}

#重置右边按钮
item replace entity @s enderchest.8 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_i:4,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.17 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_i:5,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.26 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_i:6,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
