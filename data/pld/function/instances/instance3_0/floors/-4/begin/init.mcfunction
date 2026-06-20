#重置地下四层
#清理怪物

execute as @e[type=!player,x=2834,y=31,z=-849,distance=..21] run function pld:system/tp_and_kill_self
kill @e[type=armor_stand,tag=in30_-4]
kill @e[type=zombie,tag=in30_boss4]

#重置记分板等
scoreboard players set #system in3_-4f_phase -1
scoreboard players set #system in3_-4f_time 12000
scoreboard players set @a[x=2761,y=31,z=-761,distance=..6,limit=5] instance3_kill 0
scoreboard players set #system in3_-4f_sumt 100
scoreboard players set #system in3_-4f_begint 100
scoreboard players set #system in3_skill_ep_count 0

#scoreboard players set #system in3_boss4_skillc 1
bossbar set pld:instance3_0_add1hp visible false
bossbar set pld:instance3_0_add2hp visible false
bossbar set pld:instance3_0_add3hp visible false
bossbar set pld:instance3_0_boss4hp visible false
bossbar set pld:instance3_0_boss4hp color red
bossbar set pld:instance3_0_dp_loading visible false
bossbar set pld:instance3_0_ds_loading visible false
bossbar set pld:instance3_0_ep_loading visible false

scoreboard players reset #system in3_skill_dp_load
scoreboard players reset #system in3_skill_ds_load
scoreboard players reset #system in3_skill_ds2_load
scoreboard players reset #system in3_skill_ep_load
scoreboard players reset #system in3_skill_ep2_load
scoreboard players reset @a in3_skill_dp_mark
scoreboard players reset #system in3_skill_ds_tick
scoreboard players reset #system in3_skill_dp_tick
scoreboard players reset #system in3_skill_ep_mark
function pld:instances/instance3_0/floors/-4/skill/double_sword/clear

#重置场地方块
function pld:instances/instance3_0/floors/-4/skill/explode/eye/clear

#全体进入镇妖塔地下四层
scoreboard players set @a[x=2761,y=31,z=-761,distance=..6,limit=5] instance3_floor -4
#scoreboard players remove @a[x=2761,y=31,z=-761,distance=..6,limit=5] racefriend2 4
scoreboard players remove @a[x=2761,y=31,z=-761,distance=..6,limit=5] instance3_kill 0
scoreboard players remove @a[x=2761,y=31,z=-761,distance=..6,limit=5] in3_skill_dp_mark 0
#tellraw @a[x=2761,y=31,z=-761,distance=..6,limit=5] {"translate": "pl.info.instance3.reduce_friend2"}
tp @a[x=2761,y=31,z=-761,distance=..6,limit=5] 2834 31 -839