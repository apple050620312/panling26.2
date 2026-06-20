loot give @s loot pld:items/feather_l1
scoreboard players set @s check_feather 1
tellraw @s {"translate":"pl.info.menu_new"}
function pld:system/menubook/update/main
