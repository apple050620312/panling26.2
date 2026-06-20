
#清理背包
function pld:equipment_lock/main

#清理记分板
function pld:equipment_lock/equipment/armor/clear_scb

#激活防具栏防具
setblock ~ 255 ~ chest[block_entity_data={Items:[{Slot:0b,id:"minecraft:stone",Count:1}]}]
execute as @s at @s run function pld:equipment_lock/equipment/armor/slot_check
setblock ~ 255 ~ air

#检查套裝效果
function pld:equipment_lock/equipment/armor/set_bonus/set_check

function pld:system/armorlock/legend_attributes/main
scoreboard players set @s armorlock_tick -1
