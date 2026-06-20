#判定通过，按照limit rare element slot 给出枚举结果
#limit slot Slot:6b tag给出
#element Slot:0b tag.id给出
#rare 记分板#temp temp给出
scoreboard players set #temp temp2 -1
scoreboard players set #temp temp3 -1
scoreboard players set #temp temp4 -1
execute if score #temp temp matches 2 store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:3b}].tag.job
execute if score #temp temp matches 3.. store result score #temp temp2 run data get block ~ ~ ~ Items[{Slot:6b}].tag.limit

execute store result score #temp temp3 run data get block ~ ~ ~ Items[{Slot:6b}].tag.slot
execute store result score #temp temp4 run data get block ~ ~ ~ Items[{Slot:0b}].tag.element
#如果元素为神器材料，则元素继承自裝備

#如果原裝備有附灵等级，需要同步
scoreboard players set #system temp -1
execute store success score #system temp run data get block ~ ~ ~ Items.[{Slot:6b}].tag.enchant_id
execute if score #system temp matches 1 run function pld:system/dz/dzslot/enchant_clone/to_temp

#rare  记分板#temp temp 给出
#limit 记分板#temp temp2给出
#slot  记分板#temp temp3给出
#element 记分板#temp temp4给出

#根据元素区分5个分支
execute if score #temp temp4 matches 0 run function pld:system/dz/dzslot/element/metal
execute if score #temp temp4 matches 1 run function pld:system/dz/dzslot/element/wood
execute if score #temp temp4 matches 2 run function pld:system/dz/dzslot/element/water
execute if score #temp temp4 matches 3 run function pld:system/dz/dzslot/element/fire
execute if score #temp temp4 matches 4 run function pld:system/dz/dzslot/element/earth

#同步附灵
execute if score #system temp matches 1 run function pld:system/dz/dzslot/enchant_clone/to_armor





#execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:6b,id:"minecraft:glowstone_dust",Count:1b,components:{"minecraft:custom_data":{id:"panling:material_helmet"}}}]}] run function pld:system/dz/dzslot/dzhelmet
#execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:6b,id:"minecraft:glowstone_dust",Count:1b,components:{"minecraft:custom_data":{id:"panling:material_chestplate"}}}]}] run function pld:system/dz/dzslot/dzchestplate
#execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:6b,id:"minecraft:glowstone_dust",Count:1b,components:{"minecraft:custom_data":{id:"panling:material_leggings"}}}]}] run function pld:system/dz/dzslot/dzleggings
#execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:6b,id:"minecraft:glowstone_dust",Count:1b,components:{"minecraft:custom_data":{id:"panling:material_boots"}}}]}] run function pld:system/dz/dzslot/dzboots

