#tp npc
tp @e[type=villager,tag=core_npc] -302 155 -1516 70 -15 
#同步bossbar
scoreboard players add #system npc_water 1
execute store result bossbar pl:final_battle_npc_water value run scoreboard players get #system npc_water

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/3/npc/5 5s
