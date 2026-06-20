#重置副本
#1.清理怪物
execute as @e[x=2795,y=68,z=-432,dx=47,dy=27,dz=36,type=!player,tag=!instance1] run function pld:system/tp_and_kill_self

#2.修复棺材
fill 2804 71 -415 2805 72 -413 minecraft:chiseled_quartz_block replace
#3.重置羊毛
setblock 2805 75 -405 minecraft:chiseled_quartz_block replace
setblock 2805 76 -414 minecraft:chiseled_quartz_block replace
setblock 2805 75 -423 minecraft:chiseled_quartz_block replace
#4.重置记分板
scoreboard players set #system instance1_stage 9
scoreboard players set #system instance1_tick 6666
scoreboard players set #system instance1_phase 0
scoreboard players set #system instance1_fail1 0
scoreboard players set #system instance1_fail2 0
scoreboard players set #system instance1_p1in 0
scoreboard players set #system instance1_p2in 0
scoreboard players set @a kill_green 0
scoreboard players set @a kill_red 0
scoreboard players set @a kill_white 0

#重置副本失敗判定
scoreboard players set #system instance1_failed 0
#玩家进图
tp @a[x=2841,y=28,z=-416,dx=2,dy=5,dz=4,limit=5] 2839 70 -414
#开始【1s】
schedule clear pld:instances/instance1/begin
schedule function pld:instances/instance1/begin 1s