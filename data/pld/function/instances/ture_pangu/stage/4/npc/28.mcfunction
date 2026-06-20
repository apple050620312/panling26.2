#给予速度
data merge entity @e[limit=1,type=villager,tag=core_npc] {NoAI:1}

#同步bossbar
scoreboard players add #system npc_fire 1
execute store result bossbar pl:final_battle_npc_fire value run scoreboard players get #system npc_fire

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/4/npc/29 5s
