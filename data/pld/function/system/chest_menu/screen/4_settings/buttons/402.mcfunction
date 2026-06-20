#重置自己
data merge block 0 -1 0 {Items:[]}
item replace block 0 -1 0 container.0 from entity @s enderchest.3
execute unless data block 0 -1 0 Items[0].tag.clickable run loot give @s mine 0 -1 0 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

item replace entity @s enderchest.3 with snowball[hide_additional_tooltip={},custom_name='{"translate":"pl.chest_menu.switch_info.zf.name"}',custom_data={clickable:1,to_screen:402}]
execute unless score @s info_pos_zf matches 1.. run item modify entity @s enderchest.3 pld:chest_menu/4/tellraw_default
execute if score @s info_pos_zf matches 1 run item modify entity @s enderchest.3 pld:chest_menu/4/actionbar