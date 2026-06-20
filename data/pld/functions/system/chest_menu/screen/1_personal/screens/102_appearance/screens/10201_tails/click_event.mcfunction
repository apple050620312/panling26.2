#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#本screen 需要检查的按钮表 
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{set_tail:0}}] run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/screens/10201_tails/click_events/set_tail0
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{set_tail:1}}] run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/screens/10201_tails/click_events/set_tail1

#右侧按钮检查
function pld:system/chest_menu/screen/click_events_right
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:102}}] run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/main
