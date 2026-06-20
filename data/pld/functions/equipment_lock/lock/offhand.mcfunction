data modify storage pld:system Temp set value []
data modify storage pld:system Temp append from entity @s Inventory[{Slot:-106b}]
data modify storage pld:system Temp[{Slot:-106b}].Slot set value 0b
execute unless score @s WeaponSlot matches -1 if data storage pld:system Temp[{Slot:0b,tag:{act:1}}] run data modify storage pld:system Temp[{tag:{act:1}}].tag.modify set value 1
data modify block ~ 255 ~ Items set from storage pld:system Temp

