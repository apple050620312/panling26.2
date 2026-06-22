#语境 
#   pld:system Temp 玩家实体数据
#   pld:system Temp_ender_data 玩家菜单数据

#抓取箱内容 将玩家末影箱内容存入storage pld:system Temp_chest中
data modify storage pld:system Temp_chest set from storage pld:system Temp.EnderItems
#清理按钮们
data remove storage pld:system Temp_chest[{components:{custom_data:{clickable:1}}}]
#清理左三,不在這裡返还
data remove storage pld:system Temp_chest[{slot:0}]
data remove storage pld:system Temp_chest[{slot:9}]
data remove storage pld:system Temp_chest[{slot:18}]


#根据当前菜单页面，判断情况
execute if score @s screen matches 200..225 run function pld:system/chest_menu/clear_chest/if_in_chests

#清理右三,不在這裡返还
data remove storage pld:system Temp_chest[{slot:8}]
data remove storage pld:system Temp_chest[{slot:17}]
#data remove storage pld:system Temp_chest[{slot:26}]

    #不是储存页面，看看是否有被遗忘的物品
execute if score @s screen matches 0.. unless score @s screen matches 200..225 if data storage pld:system Temp_chest[0] run function pld:system/chest_menu/clear_chest/send_items_back

#清空末影箱
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air

