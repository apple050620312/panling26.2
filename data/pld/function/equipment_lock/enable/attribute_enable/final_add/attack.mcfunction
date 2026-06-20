
data modify storage pld:system Temp set value {id:"minecraft:sharpness",lvl:0}
execute store result score #temp temp run data get block ~ ~ ~ Items[0].tag.PLattributes.final_add.attack 10
execute unless score #temp temp matches 10.. run tellraw @s {"text":"最終近战伤害加成至少1点","color":"red"}
execute if score #temp temp matches 10.. run scoreboard players set #temp temp2 1
execute if score #temp temp matches 10.. run scoreboard players remove #temp temp 10
scoreboard players set #temp temp3 5
execute if score #temp temp matches 0.. run scoreboard players operation #temp temp /= #temp temp3
execute if score #temp temp2 matches 1.. store result storage pld:system Temp.lvl int 1.0 run scoreboard players operation #temp temp += #temp temp2
data modify block ~ ~ ~ Items[0].tag.Enchantments append from storage pld:system Temp

