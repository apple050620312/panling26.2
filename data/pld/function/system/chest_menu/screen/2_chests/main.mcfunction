#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 2
execute unless score @s chests_enabled matches 1.. run scoreboard players set @s chests_enabled 1

#功能按键
execute if score @s chests_enabled matches 1 run function pld:system/chest_menu/screen/2_chests/screens/main/1
execute if score @s chests_enabled matches 2 run function pld:system/chest_menu/screen/2_chests/screens/main/2
execute if score @s chests_enabled matches 3 run function pld:system/chest_menu/screen/2_chests/screens/main/3
execute if score @s chests_enabled matches 4 run function pld:system/chest_menu/screen/2_chests/screens/main/4
execute if score @s chests_enabled matches 5 run function pld:system/chest_menu/screen/2_chests/screens/main/5
execute if score @s chests_enabled matches 6 run function pld:system/chest_menu/screen/2_chests/screens/main/6
execute if score @s chests_enabled matches 7 run function pld:system/chest_menu/screen/2_chests/screens/main/7
execute if score @s chests_enabled matches 8 run function pld:system/chest_menu/screen/2_chests/screens/main/8 
execute if score @s chests_enabled matches 9 run function pld:system/chest_menu/screen/2_chests/screens/main/9 
execute if score @s chests_enabled matches 10 run function pld:system/chest_menu/screen/2_chests/screens/main/10 
execute if score @s chests_enabled matches 11 run function pld:system/chest_menu/screen/2_chests/screens/main/11
execute if score @s chests_enabled matches 12 run function pld:system/chest_menu/screen/2_chests/screens/main/12
execute if score @s chests_enabled matches 13 run function pld:system/chest_menu/screen/2_chests/screens/main/13
execute if score @s chests_enabled matches 14 run function pld:system/chest_menu/screen/2_chests/screens/main/14
execute if score @s chests_enabled matches 15 run function pld:system/chest_menu/screen/2_chests/screens/main/15
execute if score @s chests_enabled matches 16 run function pld:system/chest_menu/screen/2_chests/screens/main/16
execute if score @s chests_enabled matches 17 run function pld:system/chest_menu/screen/2_chests/screens/main/17
execute if score @s chests_enabled matches 18 run function pld:system/chest_menu/screen/2_chests/screens/main/18
execute if score @s chests_enabled matches 19 run function pld:system/chest_menu/screen/2_chests/screens/main/19
execute if score @s chests_enabled matches 20 run function pld:system/chest_menu/screen/2_chests/screens/main/20
execute if score @s chests_enabled matches 21 run function pld:system/chest_menu/screen/2_chests/screens/main/21

#设置返回按键
item replace entity @s enderchest.8 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_i:4,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.17 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_i:5,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}
item replace entity @s enderchest.26 with minecraft:clock{clickable:1,to_screen:0,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_pre_screen"}',Lore:['{"translate":"pl.chest_menu.pre_menu.lore"}']}}
