#tp npc
tp @e[type=villager,tag=core_npc] -387 167 -1366 0 0
#同步bossbar
scoreboard players add #system npc_wood 1
execute store result bossbar pl:final_battle_npc_wood value run scoreboard players get #system npc_wood

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/2/p2_success 5s
