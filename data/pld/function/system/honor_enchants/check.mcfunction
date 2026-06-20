execute store result score @s temp run data get entity @s Inventory[{Slot:103b}].tag.enchanted
execute if score @s temp matches 1 at @s run function pld:system/honor_enchants/enchant1

execute if score @s temp matches 2 at @s run function pld:system/honor_enchants/enchant2
execute if score @s temp matches 3 at @s run function pld:system/honor_enchants/enchant3
execute if score @s temp matches 4 at @s run function pld:system/honor_enchants/enchant4
execute if score @s temp matches 5 at @s run function pld:system/honor_enchants/enchant5

execute if score @s temp matches 7 at @s run function pld:system/honor_enchants/enchant7

