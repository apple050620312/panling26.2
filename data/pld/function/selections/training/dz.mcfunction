execute if block ~ ~ ~ minecraft:dispenser{Items:[{Slot:0b,id:"minecraft:bone",Count:1b,components:{"minecraft:custom_data":{id:"panling:wood"}}] run data merge block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:leather_helmet",Count:1b,components:{"minecraft:custom_data":{id:"panling:example_helmet2"}}}]}
execute store result score @p[distance=..5] dzsuccess run data get block ~ ~ ~ Items[0].Slot 
playsound minecraft:block.anvil.use block @p[distance=..5,scores={dzsuccess=5}] 
tellraw @p[distance=..5,scores={dzsuccess=5}] {"translate":"pl.dzsuccess"}
scoreboard players set @p[distance=..5,scores={dzsuccess=5}] dzsuccess 0

