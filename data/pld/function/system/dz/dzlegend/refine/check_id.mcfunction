#block ~ ~ ~ Items[{slot:5}]
execute store result score #temp temp run data get block ~ ~ ~ Items[{slot:5}].tag.legend_id
execute if score #temp temp matches 0 run tag @s add legend_id_0
execute if score #temp temp matches 1 run tag @s add legend_id_1
execute if score #temp temp matches 2 run tag @s add legend_id_2
execute if score #temp temp matches 3 run tag @s add legend_id_3
execute if score #temp temp matches 4 run tag @s add legend_id_4
execute if score #temp temp matches 5 run tag @s add legend_id_5
execute if score #temp temp matches 6 run tag @s add legend_id_6


scoreboard players reset #temp temp