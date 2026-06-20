#清空末影箱
function pld:system/chest_menu/clear_chest/main
#更新邮件排序
function pld:system/chest_menu/screen/3_mails/sort_mails
#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据

#设置菜单页面记分板
scoreboard players set @s screen 3
scoreboard players set @s screen_mail_page 1

#抓取列表
data modify storage pld:system Temp_ender_data_mails set value []
data modify storage pld:system Temp_ender_data_mails set from storage pld:system Temp_ender_data.mails
execute store result score player_mail_count int run data get storage pld:system Temp_ender_data_mails
#
function pld:system/chest_menu/screen/3_mails/buttons/page1/check

#上翻页-占位符
item replace entity @s enderchest.8 with minecraft:black_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.invalid_page_up"}',custom_data={clickable:1,reset_self_id:7}]
#下翻页-占位符
execute if score player_mail_count int matches ..21 run item replace entity @s enderchest.17 with minecraft:black_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.invalid_page_down"}',custom_data={clickable:1,reset_self_id:8}]
#下翻页
execute if score player_mail_count int matches 22.. run item replace entity @s enderchest.17 with minecraft:wooden_axe[minecraft:custom_model_data={floats:[6]},custom_name='{"translate":"pl.chest_menu.page_down"}',custom_data={clickable:1,to_page:2}]

#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock[custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:0}]

#将储存数据储存到俩个按钮中 
#从 pld:system 的 Temp_chest 到 物品的 data
#item modify entity @s enderchest.26 pld:chest_menu/set_data

