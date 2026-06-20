#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#右侧按钮检查
function pld:system/chest_menu/screen/click_events_right

#本screen 需要检查的按钮表 
execute store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:1}}] run function pld:system/chest_menu/screen/1_personal/main
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:2}}] run function pld:system/chest_menu/screen/2_chests/main
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:3}}] run function pld:system/chest_menu/screen/3_mails/page1
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:4}}] run function pld:system/chest_menu/screen/4_settings/main


execute unless score @s temp2 matches 1 store success score @s temp2 if score @s screen matches 0 unless data storage pld:system Temp.EnderItems[{tag:{reset_self_id:6}}] run function pld:system/chest_menu/buttons/reset_self6
