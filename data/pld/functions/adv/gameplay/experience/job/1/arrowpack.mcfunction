scoreboard players set @s check_arrow_pack 1
tellraw @s {"translate":"pl.info.menu_new"}
function pld:system/menubook/update/main
scoreboard players add @s achievement_point 10