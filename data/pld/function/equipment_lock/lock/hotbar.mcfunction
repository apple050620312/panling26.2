data modify storage pld:system Temp set value []
data modify storage pld:system Temp append from entity @s Inventory[{Slot:0b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:1b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:2b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:3b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:4b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:5b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:6b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:7b}]
data modify storage pld:system Temp append from entity @s Inventory[{Slot:8b}]
execute unless score @s WeaponSlot matches 1 if data storage pld:system Temp[{Slot:0b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:0b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 2 if data storage pld:system Temp[{Slot:1b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:1b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 3 if data storage pld:system Temp[{Slot:2b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:2b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 4 if data storage pld:system Temp[{Slot:3b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:3b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 5 if data storage pld:system Temp[{Slot:4b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:4b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 6 if data storage pld:system Temp[{Slot:5b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:5b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 7 if data storage pld:system Temp[{Slot:6b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:6b,tag:{act:1}}].tag.modify set value 1 
execute unless score @s WeaponSlot matches 8 if data storage pld:system Temp[{Slot:7b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:7b,tag:{act:1}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 9 if data storage pld:system Temp[{Slot:8b,tag:{act:1}}] run data modify storage pld:system Temp[{Slot:8b,tag:{act:1}}].tag.modify set value 1

execute as @s[scores={job=0}] run function pld:equipment_lock/lock/hotbar_job/0
execute as @s[scores={job=1}] run function pld:equipment_lock/lock/hotbar_job/1
execute as @s[scores={job=2}] run function pld:equipment_lock/lock/hotbar_job/0
execute as @s[scores={job=2}] run function pld:equipment_lock/lock/hotbar_job/1

data modify block ~ 255 ~ Items set from storage pld:system Temp

