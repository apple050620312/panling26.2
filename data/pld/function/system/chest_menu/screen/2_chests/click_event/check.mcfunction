#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
execute if score @s screen matches 200..220 store result storage pld:macro id int 1 run scoreboard players get @s screen\nexecute if score @s screen matches 200..220 run function pld:system/chest_menu/screen/2_chests/click_event/screens/macro_call with storage pld:macro\n