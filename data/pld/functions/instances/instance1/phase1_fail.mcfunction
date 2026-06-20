tellraw @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] {"translate": "pl.info.instance1.phase1_failed","color":"gold"}
scoreboard players set #system instance1_fail1 1
scoreboard players add #system instance1_failed 1

#重置杀怪判定
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_green 0
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_red 0
scoreboard players set @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36] kill_white 0
execute as @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=!player,tag=!instance1] run function pld:system/tp_and_kill_self
schedule clear pld:instances/instance1/phase1
schedule function pld:instances/instance1/phase1 5s