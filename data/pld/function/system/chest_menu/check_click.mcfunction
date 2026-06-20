#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据

##Score reset
scoreboard players reset @s click
scoreboard players reset @s temp
##Actual clear
clear @s #pld:click[custom_data={clickable:1}]

#左侧按钮检查
function pld:system/chest_menu/screen/click_events_left

#根据screen 分流
execute if score @s screen matches 0 store success score @s temp run function pld:system/chest_menu/screen/0_main_menu/click_event
execute unless score @s temp matches 1 if score @s screen matches 1 store success score @s temp run function pld:system/chest_menu/screen/1_personal/click_event
execute unless score @s temp matches 1 if score @s screen matches 2 store success score @s temp run function pld:system/chest_menu/screen/2_chests/click_event
execute unless score @s temp matches 1 if score @s screen matches 3 store success score @s temp run function pld:system/chest_menu/screen/3_mails/click_event
execute unless score @s temp matches 1 if score @s screen matches 4 store success score @s temp run function pld:system/chest_menu/screen/4_settings/click_event
execute unless score @s temp matches 1 if score @s screen matches 102 store success score @s temp run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/click_event
execute unless score @s temp matches 1 if score @s screen matches 10201 store success score @s temp run function pld:system/chest_menu/screen/1_personal/screens/102_appearance/screens/10201_tails/click_event

execute unless score @s temp matches 1 if score @s screen matches 200..220 store success score @s temp run function pld:system/chest_menu/screen/2_chests/click_event/check

