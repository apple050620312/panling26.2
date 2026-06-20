#重置地下一层
#清理怪物
forceload add 2779 -751 2803 -779
execute as @e[type=!player,x=2791,y=30,z=-763,distance=..21] run function pld:system/tp_and_kill_self
kill @e[type=armor_stand,tag=in30_-1]
forceload remove 2779 -751 2803 -779

#重置记分板等
scoreboard players set #system in3_-1f_phase 1
scoreboard players set #system in3_-1f_killc 0
scoreboard players set #system in3_-1f_time 6000
scoreboard players set @a[x=-200,y=52,z=-185,distance=..6,level=40..] instance3_kill 0
scoreboard players set @a[x=-200,y=52,z=-185,distance=..6,level=40..] feather_mainland -1
scoreboard players set #system in3_-1f_sumt 100
bossbar set pld:instance3_0_floor1 visible true
bossbar set pld:instance3_0_boss1hp visible false

#全体进入鎮妖塔地下一层
scoreboard players set @a[x=-200,y=52,z=-185,distance=..6,level=40..] instance3_floor -1
#scoreboard players remove @a[x=-200,y=52,z=-185,distance=..6,level=40..] racefriend2 2
scoreboard players remove @a[x=-200,y=52,z=-185,distance=..6,level=40..] instance3_kill 0
scoreboard players set @a[x=-200,y=52,z=-185,distance=..6,level=40..] in3_-1f_clear_m 1

#tellraw @a[x=-200,y=52,z=-185,distance=..6,level=40..] {"translate": "pl.info.instance3.reduce_friend2"}
tellraw @a[x=-200,y=52,z=-185,distance=..6,level=40..] {"translate": "pl.info.instance3_0.in_tower"}
tellraw @a[x=-200,y=52,z=-185,distance=..6,level=40..] {"translate": "pl.info.instance3_0.monster_p"}
tellraw @a[x=-200,y=52,z=-185,distance=..6,level=40..] {"translate": "pl.info.instance3.tip1"}
tp @a[x=-200,y=52,z=-185,distance=..6,level=40..] 2791 31 -763

tellraw @a[x=-200,y=52,z=-185,distance=..6,level=..39] {"translate": "pl.info.instance3_0.in_tower_resis"}

