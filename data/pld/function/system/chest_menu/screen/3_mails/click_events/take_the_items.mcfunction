# pld:system Temp_the_mail
tellraw @s {"translate":"pl.chest_menu.info.take_items"}
data merge block 0 -1 0 {Items:}
data modify block 0 -1 0 Items set from storage pld:system Temp_the_mail.attached_items
loot give @s mine 0 -1 0 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

