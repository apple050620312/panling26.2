#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 4

#400 武器技能信息提示
function pld:system/chest_menu/screen/4_settings/buttons/400
#401 套装效果信息提示
function pld:system/chest_menu/screen/4_settings/buttons/401
#402 阵法信息提示
function pld:system/chest_menu/screen/4_settings/buttons/402

#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:0}]

#将储存数据储存到俩个按钮中 
#从 pld:system 的 Temp_chest 到 物品的 data
#item modify entity @s enderchest.26 pld:chest_menu/set_data
