#tp npc
tp @e[type=villager,tag=core_npc] -298 152 -1478 -30 15

#同步bossbar
scoreboard players add #system npc_metal 1
execute store result bossbar pl:final_battle_npc_metal value run scoreboard players get #system npc_metal


#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/1/npc/25 5s