scoreboard players reset @s temp2
execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{reset_self_id:7}}}] run item replace entity @s enderchest.8 with minecraft:black_stained_glass_pane[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.invalid_page_up"}',custom_data={clickable:1,reset_self_id:7}]
execute if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{reset_self_id:8}}}] run item replace entity @s enderchest.17 with minecraft:black_stained_glass_pane[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.invalid_page_down"}',custom_data={clickable:1,reset_self_id:8}]

execute if score @s screen_chest_page matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/211/page2

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:1}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/211/page1
execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 2 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:3}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/211/page3

execute unless score @s temp2 matches 1 if score @s screen_chest_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/2_chests/screens/chests/211/page2
execute unless score @s temp2 matches 1 unless data storage pld:system Temp.EnderItems[{components:{"minecraft:custom_data":{to_screen:2}}}] run function pld:system/chest_menu/screen/2_chests/main
