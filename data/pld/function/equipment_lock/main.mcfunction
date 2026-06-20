#清理背包
setblock ~ 255 ~ chest
execute as @s at @s run function pld:equipment_lock/lock/backpack
execute as @s at @s run function pld:equipment_lock/lock/do
execute as @s at @s run function pld:equipment_lock/replace/player_inventory_replace
setblock ~ 255 ~ air

#清理快捷欄
setblock ~ 255 ~ chest
execute as @s at @s run function pld:equipment_lock/lock/hotbar
execute as @s at @s run function pld:equipment_lock/lock/do
execute as @s at @s run function pld:equipment_lock/replace/player_hotbar_replace
setblock ~ 255 ~ air

#清理副手
setblock ~ 255 ~ chest
execute as @s at @s unless score @s WeaponSlot matches -1 run function pld:equipment_lock/lock/offhand
execute as @s at @s unless score @s WeaponSlot matches -1 run function pld:equipment_lock/lock/do
execute as @s at @s unless score @s WeaponSlot matches -1 run function pld:equipment_lock/replace/player_offhand_replace
setblock ~ 255 ~ air

