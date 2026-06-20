execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:0b,components:{"minecraft:custom_data":{type:1}}},{Slot:3b,components:{"minecraft:custom_data":{type:1}}}]}] run function pld:system/dz/enchant/enchant_type1
execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:0b,components:{"minecraft:custom_data":{type:2}}},{Slot:3b,components:{"minecraft:custom_data":{type:2}}}]}] run function pld:system/dz/enchant/enchant_type2

execute as @p[scores={success=1}] run scoreboard players set @s dzsuccess 10
execute as @p[scores={success=1}] run scoreboard players set @s success 0

