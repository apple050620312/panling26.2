#重置地下三层
#清理怪物

execute as @e[type=!player,x=2834,y=31,z=-806,distance=..21] run function pld:system/tp_and_kill_self

kill @e[type=armor_stand,tag=in30_-3]

#重置记分板等
scoreboard players set #system in3_-3f_phase 1
scoreboard players set #system in3_-3f_killc 0
scoreboard players set #system in3_-3f_time 6000
scoreboard players set @a[x=2744,y=31,z=-777,distance=..6] instance3_kill 0
scoreboard players set #system in3_-3f_sumt 100
bossbar set pld:instance3_0_floor3 visible true
bossbar set pld:instance3_0_boss3hp visible false

#全体进入鎮妖塔地下三层
scoreboard players set @a[x=2744,y=31,z=-777,distance=..6] instance3_floor -3
#scoreboard players remove @a[x=2744,y=31,z=-777,distance=..6] racefriend2 2
scoreboard players remove @a[x=2744,y=31,z=-777,distance=..6] instance3_kill 0
#tellraw @a[x=2744,y=31,z=-777,distance=..6] {"translate": "pl.info.instance3.reduce_friend2"}
tp @a[x=2744,y=31,z=-777,distance=..6] 2834 31 -806