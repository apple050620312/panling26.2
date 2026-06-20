#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#本screen 需要检查的按钮表
#右侧按钮检查
function pld:system/chest_menu/screen/click_events_right

execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:400}}}] run function pld:system/chest_menu/screen/4_settings/click_event/400
execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:401}}}] run function pld:system/chest_menu/screen/4_settings/click_event/401
execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:402}}}] run function pld:system/chest_menu/screen/4_settings/click_event/402 


#返回
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:0}}}] run function pld:system/chest_menu/screen/0_main_menu/main
