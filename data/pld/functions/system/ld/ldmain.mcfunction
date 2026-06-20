execute if block ~-3 ~-1 ~ minecraft:hopper positioned ~-3 ~-1 ~ run function pld:system/ld/ldmain1
execute if block ~3 ~-1 ~ minecraft:hopper positioned ~3 ~-1 ~ run function pld:system/ld/ldmain1
execute if block ~4 ~-1 ~ minecraft:hopper positioned ~4 ~-1 ~ run function pld:system/ld/ldmain1
execute if block ~-4 ~-1 ~ minecraft:hopper positioned ~-4 ~-1 ~ run function pld:system/ld/ldmain1
tellraw @p[scores={ldsuccess=1}] {"translate":"pl.ldsuccess"}
playsound minecraft:block.fire.extinguish block @p[scores={ldsuccess=1}]

scoreboard players set @p ldsuccess 0
