#重置自己
data merge block 0 -1 0 {Items:[]}
item replace block 0 -1 0 container.0 from entity @s enderchest.10
execute unless data block 0 -1 0 Items[0].tag.clickable run loot give @s mine 0 -1 0 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

item replace entity @s enderchest.10 with minecraft:player_head[custom_data={clickable:1,to_screen:1}]
item modify entity @s enderchest.10 pld:fill_player_head
item modify entity @s enderchest.10 pld:chest_menu/100_lore1
execute if score @s job matches 0 run item modify entity @s enderchest.10 pld:chest_menu/100_job0
execute if score @s job matches 1 run item modify entity @s enderchest.10 pld:chest_menu/100_job1
execute if score @s job matches 2 run item modify entity @s enderchest.10 pld:chest_menu/100_job2
item modify entity @s enderchest.10 pld:chest_menu/100_lore2
