#喊话
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate": "pl.info.instance2.phase1_failed"}
tellraw @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64] {"translate": "pl.info.instance2.tip2"}
bossbar set pl:instance2_core visible false
scoreboard players add #system instance2_failed 1
#重置阶段
scoreboard players set #system instance2_weak 0
execute as @e[x=1052,y=3,z=864,dx=82,dy=55,dz=64,type=!player,type=!armor_stand] run function pld:system/tp_and_kill_self
schedule clear pld:instances/instance2/damage/delay
schedule clear pld:instances/instance2/phase
schedule function pld:instances/instance2/phase 5s
