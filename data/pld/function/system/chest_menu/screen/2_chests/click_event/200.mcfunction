scoreboard players reset @s temp2
execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{reset_self_id:7}}}] run function pld:system/chest_menu/buttons/reset_self7
execute if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{reset_self_id:8}}}] run function pld:system/chest_menu/buttons/reset_self8



execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/200/page2

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:1}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/200/page1
execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:3}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/200/page3

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/200/page2


execute unless score @s temp2 matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:2}}}] run function pld:system/chest_menu/screen/2_chests/main
