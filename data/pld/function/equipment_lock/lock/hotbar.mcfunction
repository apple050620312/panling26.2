data modify storage pld:system Temp set value []
data modify storage pld:system Temp append from entity @s Inventory[{slot:0}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:1}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:2}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:3}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:4}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:5}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:6}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:7}]
data modify storage pld:system Temp append from entity @s Inventory[{slot:8}]
execute unless score @s WeaponSlot matches 1 if data storage pld:system Temp[{slot:0,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:0,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 2 if data storage pld:system Temp[{slot:1,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:1,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 3 if data storage pld:system Temp[{slot:2,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:2,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 4 if data storage pld:system Temp[{slot:3,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:3,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 5 if data storage pld:system Temp[{slot:4,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:4,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 6 if data storage pld:system Temp[{slot:5,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:5,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 7 if data storage pld:system Temp[{slot:6,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:6,components:{custom_data:{act:1}}}].tag.modify set value 1 
execute unless score @s WeaponSlot matches 8 if data storage pld:system Temp[{slot:7,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:7,components:{custom_data:{act:1}}}].tag.modify set value 1
execute unless score @s WeaponSlot matches 9 if data storage pld:system Temp[{slot:8,components:{custom_data:{act:1}}}] run data modify storage pld:system Temp[{slot:8,components:{custom_data:{act:1}}}].tag.modify set value 1

execute as @s[scores={job=0}] run function pld:equipment_lock/lock/hotbar_job/0
execute as @s[scores={job=1}] run function pld:equipment_lock/lock/hotbar_job/1
execute as @s[scores={job=2}] run function pld:equipment_lock/lock/hotbar_job/0
execute as @s[scores={job=2}] run function pld:equipment_lock/lock/hotbar_job/1

data modify block ~ 255 ~ Items set from storage pld:system Temp

