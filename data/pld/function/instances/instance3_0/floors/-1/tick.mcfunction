#清理没有被清理的残留怪物
execute as @a[scores={in3_-1f_clear_m=1..},x=2791,y=30,z=-763,distance=..21] as @e[tag=in3_add-1,x=2791,y=30,z=-763,distance=..21] at @s run function pld:system/tp_and_kill_self


#刷怪
execute store result score #system in3_-1f_monsc run execute if entity @e[tag=in3_add-1,x=2791,y=30,z=-763,distance=..21] 
execute if score #system in3_-1f_phase matches 1.. if score #system in3_-1f_sumt matches 0.. run scoreboard players remove #system in3_-1f_sumt 1
execute if score #system in3_-1f_phase matches 1.. if score #system in3_-1f_sumt matches 0 if score #system in3_-1f_monsc matches ..10 positioned 2791 30 -763 run function pld:instances/instance3_0/floors/-1/monsters
execute if score #system in3_-1f_phase matches 1.. if score #system in3_-1f_sumt matches -1 run scoreboard players set #system in3_-1f_sumt 300
#统计玩家击杀怪物
execute if score #system in3_-1f_phase matches 1 as @a[x=2791,y=30,z=-763,distance=..21,scores={instance3_kill=1..}] run function pld:instances/instance3_0/floors/-1/killc

#更新进度条
execute store result bossbar pld:instance3_0_floor1 value run scoreboard players get #system in3_-1f_killc

#击杀达到一定数量后，下一阶段
execute if score #system in3_-1f_phase matches 1 if score #system in3_-1f_killc matches 20.. run function pld:instances/instance3_0/floors/-1/phase2
#傀儡血量同步
execute if score #system in3_-1f_phase matches 2 store result bossbar pld:instance3_0_boss1hp value run data get entity @e[limit=1,type=zombie,tag=in30_boss1,x=2791,y=30,z=-763,distance=..21] Health 

#傀儡释放技能
execute if score #system in3_-1f_phase matches 2 if score #system in3_boss1_skillt matches 0.. run scoreboard players remove #system in3_boss1_skillt 1
execute if score #system in3_-1f_phase matches 2 if score #system in3_boss1_skillt matches 0 as @e[tag=in30_boss1,x=2791,y=30,z=-763,distance=..21] at @s run function pld:instances/instance3_0/floors/-1/boss/skill

#检查傀儡被击杀，过关
execute if score #system in3_-1f_phase matches 2 if entity @e[type=armor_stand,tag=in30_-1] unless entity @e[tag=in30_boss1,x=2791,y=30,z=-763,distance=..21] run function pld:instances/instance3_0/floors/-1/success

#时间到 没有击杀傀儡 则失败
execute if score #system in3_-1f_phase matches 1.. if score #system in3_-1f_time matches 0.. run scoreboard players remove #system in3_-1f_time 1
execute if score #system in3_-1f_phase matches 1.. if score #system in3_-1f_time matches 0 run function pld:instances/instance3_0/floors/-1/fail

#传送
execute if score #system in3_-1f_phase matches 0 as @a[x=2791,y=30,z=-763,distance=..21,scores={in3_-1f_time=0..}] run scoreboard players remove @s in3_-1f_time 1
execute if score #system in3_-1f_phase matches 0 as @a[x=2791,y=30,z=-763,distance=..21,scores={in3_-1f_time=0}] run tp @s 2744 31 -761
