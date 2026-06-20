#语境 
#   pld:system Temp 玩家实体数据
#   pld:system Temp_ender_data 玩家菜单数据
#   pld:system Temp_chest 玩家当前箱子页面的数据

#在箱子界面，那么需要保存当前页面的物品
execute if score @s screen matches 200..220 store result storage pld:macro id int 1 run scoreboard players get @s screen\nexecute if score @s screen matches 200..220 run function pld:system/chest_menu/clear_chest/screens/macro_call with storage pld:macro\n
#更新储存内容
item modify entity @s enderchest.0 pld:chest_menu/set_data
item modify entity @s enderchest.9 pld:chest_menu/set_data

#如果右三有需要返还的内容，那么返还玩家 pld:system Temp_chest
execute if data storage pld:system Temp_chest[{Slot:8b}] run function pld:system/chest_menu/clear_chest/return_items/slot8
execute if data storage pld:system Temp_chest[{Slot:17b}] run function pld:system/chest_menu/clear_chest/return_items/slot17
execute if data storage pld:system Temp_chest[{Slot:26b}] run function pld:system/chest_menu/clear_chest/return_items/slot26


#tellraw yl_jiu_qiu {"nbt":"EnderItems[{Slot:0b}]","entity":"@s"}