#复制物品
data modify block ~ 255 ~ Items[0].id set from entity @s Inventory[{Slot:3b}].id
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{Slot:3b}].tag

#激活物品
function pld:equipment_lock/enable/check

#记分板调整
execute if score @s success matches 1 run function pld:equipment_lock/equipment/weapon/slot/scb_set

#覆盖
item replace entity @s hotbar.3 from block ~ 255 ~ container.0
scoreboard players reset @s success