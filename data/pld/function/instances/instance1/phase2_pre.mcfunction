#裂棺阶段二：
scoreboard players set #system instance1_phase 2
scoreboard players set #system instance1_p2in 1

tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.phase2"}
execute as @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=!player,tag=!instance1] run function pld:system/tp_and_kill_self

#设置阶段时间 3min 
scoreboard players set #system instance1_tick 3640 
schedule clear pld:instances/instance1/phase2
schedule function pld:instances/instance1/phase2 2s
