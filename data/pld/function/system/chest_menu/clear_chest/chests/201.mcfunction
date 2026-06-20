#语境 
#   pld:system Temp 玩家实体数据
#   pld:system Temp_ender_data 玩家菜单数据
#   pld:system Temp_chest 玩家当前箱子页面不包括按钮的物品数据

execute if score @s screen_chest_page matches 1 run data modify storage pld:system Temp_ender_data.chests[{Slot:1b}].pages.page1_Items set from storage pld:system Temp_chest
execute if score @s screen_chest_page matches 2 run data modify storage pld:system Temp_ender_data.chests[{Slot:1b}].pages.page2_Items set from storage pld:system Temp_chest
execute if score @s screen_chest_page matches 3 run data modify storage pld:system Temp_ender_data.chests[{Slot:1b}].pages.page3_Items set from storage pld:system Temp_chest
