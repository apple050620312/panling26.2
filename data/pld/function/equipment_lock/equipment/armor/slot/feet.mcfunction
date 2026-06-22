#复制物品
data modify block ~ 255 ~ Items[0].id set from entity @s Inventory[{slot:100}].id
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{slot:100}].tag

#激活物品
function pld:equipment_lock/enable/check

#记分板调整
execute if score @s success matches 1 run function pld:equipment_lock/equipment/armor/slot/scb/feet

#覆盖
execute if score @s success matches 1 run item replace entity @s armor.feet from block ~ 255 ~ container.0
scoreboard players reset @s success
