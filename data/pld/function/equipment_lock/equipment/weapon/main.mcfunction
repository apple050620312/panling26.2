#清理背包
function pld:equipment_lock/main

#清理武器数据
function pld:system/attribute/clear/weapon

#激活武器
setblock ~ 255 ~ chest{Items:[{slot:0,id:"minecraft:stone",count:1}]}
execute as @s at @s run function pld:equipment_lock/equipment/weapon/slotcheck
setblock ~ 255 ~ air

#记分板恢复
execute as @s[scores={job=0}] run function pld:system/attribute/job/0/check
execute as @s[scores={job=1}] run function pld:system/attribute/job/1/check
scoreboard players set @s weaponlock_tick -1

