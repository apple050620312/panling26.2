#语境： @s player_open_enderchest matches 1..

#如果是第一次打开箱子，那么初始化
execute unless score @s screen matches -1.. run function pld:system/chest_menu/screen/init 

#抛出玩家数据
data modify storage pld:system Temp set from entity @s {}
data modify storage pld:system Temp_ender_data set from storage pld:system Temp.EnderItems[{Slot:0b}].data

#重置为主菜单
function pld:system/chest_menu/screen/0_main_menu/main


#重置记分板
scoreboard players reset @s player_open_enderchest
scoreboard players set @s player_open_enderchest_delay 3


