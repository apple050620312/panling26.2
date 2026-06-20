#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 1

#功能按键-个人面板信息

#个人基本信息
function pld:system/chest_menu/screen/1_personal/buttons/100

#个人屬性
function pld:system/chest_menu/screen/1_personal/buttons/101

#外观
item replace entity @s enderchest.14 with minecraft:diamond_chestplate[custom_name='{"translate":"pl.chest_menu.appearance"}',lore=['{"translate":"pl.chest_menu.sub_menu.lore"}'],custom_data={clickable:1,to_screen:102}]


#职业技
#item replace entity @s enderchest.16 with minecraft:wooden_sword{clickable:1,to_screen:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.skill"}',Lore:['{"translate":"pl.chest_menu.not_open"}']}}


#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock[custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:0}]

#将储存数据储存到俩个按钮中 
#从 pld:system 的 Temp_chest 到 物品的 data
#item modify entity @s enderchest.26 pld:chest_menu/set_data
