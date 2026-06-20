#重置自己
data merge block 0 -1 0 {Items:[]}
item replace block 0 -1 0 container.0 from entity @s enderchest.2
execute unless data block 0 -1 0 Items[0].tag.clickable run loot give @s mine 0 -1 0 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

item replace entity @s enderchest.2 with iron_chestplate[custom_name='{"translate":"pl.chest_menu.switch_info.armor_skill.name"}',custom_data={clickable:1,to_screen:401}]
execute unless score @s info_pos_armor_skill matches 1.. run item modify entity @s enderchest.2 pld:chest_menu/4/tellraw_default
execute if score @s info_pos_armor_skill matches 1 run item modify entity @s enderchest.2 pld:chest_menu/4/actionbar