#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#本screen 需要检查的按钮表
execute unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:100}}}] run function pld:system/chest_menu/screen/1_personal/buttons/100
execute unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:101}}}] run function pld:system/chest_menu/screen/1_personal/buttons/101
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:102}}}] run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/main


#右侧按钮检查
function pld:system/chest_menu/screen/click_events_right
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:0}}}] run function pld:system/chest_menu/screen/0_main_menu/main
