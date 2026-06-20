#重置地下二层
#清理怪物

execute as @e[type=!player,x=2834,y=31,z=-763,distance=..21] run function pld:system/tp_and_kill_self

kill @e[type=armor_stand,tag=in30_-2]

#重置记分板等
scoreboard players set #system in3_-2f_phase 1
scoreboard players set #system in3_-2f_killc 0
scoreboard players set #system in3_-2f_time 6000
scoreboard players set @a[x=2744,y=31,z=-761,distance=..6] instance3_kill 0
scoreboard players set #system in3_-2f_sumt 100
bossbar set pld:instance3_0_floor2 visible true
bossbar set pld:instance3_0_boss2hp visible false

#全体进入鎮妖塔地下二层
scoreboard players set @a[x=2744,y=31,z=-761,distance=..6] instance3_floor -2
#scoreboard players remove @a[x=2744,y=31,z=-761,distance=..6] racefriend2 2
scoreboard players remove @a[x=2744,y=31,z=-761,distance=..6] instance3_kill 0
#tellraw @a[x=2744,y=31,z=-761,distance=..6] {"translate": "pl.info.instance3.reduce_friend2"}
tp @a[x=2744,y=31,z=-761,distance=..6] 2834 31 -763
