scoreboard players reset @s temp2
execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{tag:{reset_self_id:7}}] run item replace entity @s enderchest.8 with minecraft:black_stained_glass_pane{clickable:1,reset_self_id:7,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.invalid_page_up"}'}}
execute if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{tag:{reset_self_id:8}}] run item replace entity @s enderchest.17 with minecraft:black_stained_glass_pane{clickable:1,reset_self_id:8,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.invalid_page_down"}'}}

execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{tag:{to_page:2}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/217/page2

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{tag:{to_page:1}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/217/page1
execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{tag:{to_page:3}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/217/page3

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{tag:{to_page:2}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/217/page2
execute unless score @s temp2 matches 1 unless data storage pld:system Temp.EnderItems[{tag:{to_screen:2}}] run function pld:system/chest_menu/screen/2_chests/main
