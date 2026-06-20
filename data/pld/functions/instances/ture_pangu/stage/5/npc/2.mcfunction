#tp npc
tp @e[type=villager,tag=core_npc] -404 200 -1591
#同步bossbar
scoreboard players add #system npc_earth 1
execute store result bossbar pl:final_battle_npc_earth value run scoreboard players get #system npc_earth

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/5/npc/3 5s
