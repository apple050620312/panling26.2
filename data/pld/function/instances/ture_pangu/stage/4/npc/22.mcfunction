#tp npc
tp @e[type=villager,tag=core_npc] -323 154 -1483 73 0 
#同步bossbar
scoreboard players add #system npc_fire 1
execute store result bossbar pl:final_battle_npc_fire value run scoreboard players get #system npc_fire

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/4/npc/23 5s
