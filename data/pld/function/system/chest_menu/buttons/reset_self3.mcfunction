#返还此位置的物品，如果有
data merge block 0 -1 0 {Items:[]}
item replace block 0 -1 0 container.0 from entity @s enderchest.18
execute unless data block 0 -1 0 Items[0].tag.clickable run loot give @s mine 0 -1 0 minecraft:diamond_pickaxe{isShulkerMarker:1b}

item replace entity @s enderchest.18 with minecraft:gray_stained_glass_pane{clickable:1,reset_self_id:3,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.nothing"}'}}


