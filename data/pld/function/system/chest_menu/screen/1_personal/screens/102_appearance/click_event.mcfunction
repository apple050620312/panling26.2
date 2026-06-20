#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#本screen 需要检查的按钮表 
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:10201}}}] run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/screens/10201_tails/main
#function pld:system/chest_menu/screen/1_personal/screens/101_tails/main
#execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:2}}}] run function pld:system/chest_menu/screen/2_chests/main
#execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:3}}}] run function pld:system/chest_menu/screen/3_mails/main
#execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:4}}}] run function pld:system/chest_menu/screen/4_settings/main

#右侧按钮检查
function pld:system/chest_menu/screen/click_events_right
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:1}}}] run function pld:system/chest_menu/screen/1_personal/main