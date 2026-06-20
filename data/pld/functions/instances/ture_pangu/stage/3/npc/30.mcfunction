#tp
tp @e[type=villager,tag=core_npc] -367 100 -1470 115 0 

#同步bossbar
scoreboard players add #system npc_water 1
execute store result bossbar pl:final_battle_npc_water value run scoreboard players get #system npc_water

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/3/npc/31 5s
