data modify storage pld:system Temp set value []
data modify storage pld:system Temp append from entity @s Inventory[{slot:-106}]
data modify storage pld:system Temp[{slot:-106}].Slot set value 0b
execute unless score @s WeaponSlot matches -1 if data storage pld:system Temp[{slot:0,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{components:{custom_data:{act:1}}}].tag.modify set value 1
data modify block ~ 255 ~ Items set from storage pld:system Temp

