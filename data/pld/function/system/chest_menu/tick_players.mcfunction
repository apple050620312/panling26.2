#清空storage
execute if score @s screen matches 0.. run data modify storage pld:system Temp set value {}
execute if score @s screen matches 0.. run data modify storage pld:system Temp_ender_data set value {}
execute if score @s screen matches 0.. run data modify storage pld:system Temp_chest set value 
#抛出玩家数据
execute if score @s screen matches 0.. run data modify storage pld:system Temp set from entity @s {}
#抛出储存数据到Temp_ender_data
execute if score @s screen matches 0.. run data modify storage pld:system Temp_ender_data set from storage pld:system Temp.EnderItems[{Slot:0b}].tag.data
#execute if score @s screen matches 0.. run tellraw yl_jiu_qiu {"nbt":"Temp.EnderItems[{Slot:0b}]","storage":"pld:system"}


#判断玩家是否移动了视角
execute if score @s player_open_enderchest_delay matches -1 if score @s screen matches 0.. run function pld:system/chest_menu/leave_check
execute if score @s player_open_enderchest_delay matches 0 run function pld:system/chest_menu/rot_save
execute if score @s player_open_enderchest_delay matches 0.. run scoreboard players remove @s player_open_enderchest_delay 1

#点击检查
execute if score @s screen matches 0.. store result score @s click run clear @s #pld:click[custom_data={clickable:1}] 0
execute if score @s click matches 1.. at @s run function pld:system/chest_menu/check_click

#玩家打开末影箱检查并 抛出玩家数据
execute if score @s player_open_enderchest matches 1.. run function pld:system/chest_menu/open

