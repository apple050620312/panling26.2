#如果玩家末影箱里有东西 那么需要帮他存好
scoreboard players reset temp_count int
execute store result score temp_count int run data get entity @s EnderItems
execute if score temp_count int matches 1.. run function pld:system/chest_menu/screen/move_items

#初始化该玩家的末影箱菜单
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

item replace entity @s enderchest.0 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.9 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:2,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.18 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:3,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}

item replace entity @s enderchest.8 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:4,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.17 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:5,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.26 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:6,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}

#初始化储存数据 左一 左二
execute unless score temp_count int matches 1.. run item modify entity @s enderchest.0 pld:chest_menu/init_data
execute unless score temp_count int matches 1.. run item modify entity @s enderchest.9 pld:chest_menu/init_data
execute if score temp_count int matches 1.. run item modify entity @s enderchest.0 pld:chest_menu/set_data2
execute if score temp_count int matches 1.. run item modify entity @s enderchest.9 pld:chest_menu/set_data2