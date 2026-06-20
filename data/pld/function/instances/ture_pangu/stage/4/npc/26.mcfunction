#给予速度
data merge entity @e[limit=1,type=villager,tag=core_npc] {Motion:[-2.0,0.0,0.5],Rotation:[90.0f,0.0f],NoAI:0}

#同步bossbar
scoreboard players add #system npc_fire 1
execute store result bossbar pl:final_battle_npc_fire value run scoreboard players get #system npc_fire

#5s后执行下一个
schedule function pld:instances/ture_pangu/stage/4/npc/27 5s
