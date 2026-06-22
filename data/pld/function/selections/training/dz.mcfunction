execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:0,id:"minecraft:bone",count:1,components:{custom_data:{id:"panling:wood"}}},{slot:3,id:"minecraft:iron_nugget",count:1,components:{custom_data:{id:"panling:example_core"}}},{slot:6,id:"minecraft:leather_helmet",count:1,components:{custom_data:{id:"panling:example_helmet"}}}]} run data merge block ~ ~ ~ {Items:[{slot:5,id:"minecraft:leather_helmet",count:1,components:{custom_data:{id:"panling:example_helmet2"}}}]}
execute store result score @p[distance=..5] dzsuccess run data get block ~ ~ ~ Items[0].Slot 
playsound minecraft:block.anvil.use block @p[distance=..5,scores={dzsuccess=5}] 
tellraw @p[distance=..5,scores={dzsuccess=5}] {"translate":"pl.dzsuccess"}
scoreboard players set @p[distance=..5,scores={dzsuccess=5}] dzsuccess 0

