#重置副本
execute as @e[x=1052,y=3,z=864,dx=82,dy=55,dz=64,type=!player,type=!armor_stand] run function pld:system/tp_and_kill_self
scoreboard players set #system instance2_weak 0
scoreboard players set #system instance2_hp 8
scoreboard players set #system instance2_tick 3600
scoreboard players set #system instance2_failed 0
scoreboard players set #system instance2_armor 0
execute as @e[type=armor_stand,tag=instance2] run kill @s
summon armor_stand 1086 57 892 {Tags:["instance2"]}
#玩家进图
tp @a[x=1146,y=22,z=919,dx=8,dy=10,dz=5,limit=5] 1089 15 894
bossbar set pl:instance2_boss visible true
#阶段开始
schedule clear pld:instances/instance2/phase
schedule function pld:instances/instance2/phase 2s