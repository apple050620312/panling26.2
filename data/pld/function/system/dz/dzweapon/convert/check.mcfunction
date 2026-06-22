#根据slot3物品rare和enhance_lvl产出石头
execute store result score #temp temp run data get block ~ ~ ~ Items[{slot:3}].tag.rare
execute store result score #temp temp2 run data get block ~ ~ ~ Items[{slot:3}].tag.enhance_lvl

execute if score #temp temp matches 2 run data merge block ~ ~ ~ {Items:[{slot:5,id:"minecraft:fire_charge",count:1,components:{lore:['{"translate":"pl.item.lore.refine_stone1.a"}','{"translate":"pl.item.lore.refine_stone1.b"}','{"translate":"pl.item.lore.refine_stone1.c"}'],custom_data:{id:"panling:refine_stone",lvl:1}}}]}
execute if score #temp temp matches 3 run data merge block ~ ~ ~ {Items:[{slot:5,id:"minecraft:fire_charge",count:1,components:{lore:['{"translate":"pl.item.lore.refine_stone2.a"}','{"translate":"pl.item.lore.refine_stone2.b"}','{"translate":"pl.item.lore.refine_stone2.c"}'],custom_data:{id:"panling:refine_stone",lvl:2}}}]}
execute if score #temp temp matches 4 run data merge block ~ ~ ~ {Items:[{slot:5,id:"minecraft:fire_charge",count:1,components:{lore:['{"translate":"pl.item.lore.refine_stone3.a"}','{"translate":"pl.item.lore.refine_stone3.b"}','{"translate":"pl.item.lore.refine_stone3.c"}'],custom_data:{id:"panling:refine_stone",lvl:3}}}]}
execute if score #temp temp matches 5 run data merge block ~ ~ ~ {Items:[{slot:5,id:"minecraft:fire_charge",count:1,components:{lore:['{"translate":"pl.item.lore.refine_stone4.a"}','{"translate":"pl.item.lore.refine_stone4.b"}','{"translate":"pl.item.lore.refine_stone4.c"}'],custom_data:{id:"panling:refine_stone",lvl:4}}}]}

execute store result block ~ ~ ~ Items[{slot:5}].Count byte 1.0 run scoreboard players add #temp temp2 1

execute if data block ~ ~ ~ Items[{slot:5}] run tellraw @p {"translate":"pl.convert_success"}
execute if data block ~ ~ ~ Items[{slot:5}] run playsound minecraft:block.anvil.use block @a[distance=..5] ~ ~ ~