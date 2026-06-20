#重置自己
data merge block 0 -1 0 {Items:[]}
item replace block 0 -1 0 container.0 from entity @s enderchest.12
execute unless data block 0 -1 0 Items[0].tag.clickable run loot give @s mine 0 -1 0 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

function pld:system/chest_menu/screen/1_personal/update_attributes
item replace entity @s enderchest.12 with minecraft:experience_bottle[custom_name='{"translate":"pl.chest_menu.player_attribute"}',custom_data={clickable:1,to_screen:1}]
item modify entity @s enderchest.12 pld:chest_menu/101_lore
execute if score @s job matches 0 run item modify entity @s enderchest.12 pld:chest_menu/101_job0
execute if score @s job matches 1 run item modify entity @s enderchest.12 pld:chest_menu/101_job1
execute if score @s job matches 2 run item modify entity @s enderchest.12 pld:chest_menu/101_job2


