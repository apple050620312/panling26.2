#清空末影箱
function pld:system/chest_menu/clear_chest/main

#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据

#设置菜单页面记分板
scoreboard players set @s screen 217
scoreboard players set @s screen_chest_page 1
#功能按键
#上翻页-占位符
item replace entity @s enderchest.8 with minecraft:black_stained_glass_pane[custom_name='{"translate":"pl.chest_menu.invalid_page_up"}',custom_data={clickable:1,reset_self_id:7}]
#下翻页
item replace entity @s enderchest.17 with minecraft:wooden_axe[minecraft:custom_model_data={floats:[6]},custom_name='{"translate":"pl.chest_menu.page_down"}',custom_data={clickable:1,to_page:2}]
#返回
item replace entity @s enderchest.26 with minecraft:clock[custom_name='{"translate":"pl.chest_menu.to_pre_screen"}',lore=['{"translate":"pl.chest_menu.pre_menu.lore"}'],custom_data={clickable:1,to_screen:2}]

#将pld:system Temp_chest中的数据读取到中当前页中
data modify block 0 -1 0 Items set value []
data modify block 0 -1 0 Items set from storage pld:system Temp_ender_data.chests[{slot:17}].pages.page1_Items
function pld:system/chest_menu/screen/2_chests/screens/chests/chest_cover

#将储存数据储存到俩个按钮中 
#从 pld:system 的 Temp_chest 到 物品的 data
#item modify entity @s enderchest.17 pld:chest_menu/set_data
#item modify entity @s enderchest.26 pld:chest_menu/set_data
