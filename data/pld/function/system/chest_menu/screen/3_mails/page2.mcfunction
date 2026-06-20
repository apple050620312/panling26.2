#清空末影箱
function pld:system/chest_menu/clear_chest/main

#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据

#设置菜单页面记分板
scoreboard players set @s screen 3
scoreboard players set @s screen_mail_page 2

#抓取列表
data modify storage pld:system Temp_ender_data_mails set value []
data modify storage pld:system Temp_ender_data_mails set from storage pld:system Temp_ender_data.mails
execute store result score player_mail_count int run data get storage pld:system Temp_ender_data_mails
#
function pld:system/chest_menu/screen/3_mails/buttons/page2/check

#上翻页
item replace entity @s enderchest.8 with minecraft:wooden_axe{clickable:1,to_page:1,CustomModelData:5,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.page_up"}'}}
#下翻页-占位符
execute if score player_mail_count int matches ..42 run item replace entity @s enderchest.17 with minecraft:black_stained_glass_pane{clickable:1,reset_self_id:8,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.invalid_page_down"}'}}
#下翻页
execute if score player_mail_count int matches 43.. run item replace entity @s enderchest.17 with minecraft:wooden_axe{clickable:1,to_page:3,CustomModelData:6,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.page_down"}'}}

#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock{clickable:1,to_screen:0,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_pre_screen"}',Lore:['{"translate":"pl.chest_menu.pre_menu.lore"}']}}

#将储存数据储存到俩个按钮中 
#从 pld:system 的 Temp_chest 到 物品的 data
#item modify entity @s enderchest.26 pld:chest_menu/set_data
