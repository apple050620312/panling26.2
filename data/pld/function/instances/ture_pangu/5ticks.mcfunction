function pld:instances/ture_pangu/back_stone/5ticks
execute if score #system tick_final_story matches 0 run function pld:instances/ture_pangu/pre_story/list
execute if score #system tick_final_story matches 0.. run scoreboard players remove #system tick_final_story 1

execute if score #system tick_end_story matches 0 run function pld:instances/ture_pangu/end_story/list
execute if score #system tick_end_story matches 0.. run scoreboard players remove #system tick_end_story 1


#根据战场情况更新bossbar
execute if score #system final_battle_stage matches 1..5 run bossbar set pl:final_battle players @a
scoreboard players operation #system zjl = #system final_battle_stage
scoreboard players remove #system zjl 1
execute store result bossbar pl:final_battle value run scoreboard players get #system zjl

execute if score #system final_battle_stage matches 1 run function pld:instances/ture_pangu/stage/1/bossbar
execute if score #system final_battle_stage matches 2 run function pld:instances/ture_pangu/stage/2/bossbar
execute if score #system final_battle_stage matches 3 run function pld:instances/ture_pangu/stage/3/bossbar
execute if score #system final_battle_stage matches 4 run function pld:instances/ture_pangu/stage/4/bossbar
execute if score #system final_battle_stage matches 5 run function pld:instances/ture_pangu/stage/5/bossbar



#如果有火在阵法上 清理之
execute positioned -303 151 -1474 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned -387 166 -1363 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned -381 102 -1479 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned -382 106 -1528 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned -359 214 -1557 if block ~ ~ ~ fire run setblock ~ ~ ~ air