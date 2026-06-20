#刷怪
#execute store result score #system in3_-4f_monsc run execute if entity @e[tag=in3_add-4,x=2834,y=31,z=-849,distance=..21] 
#execute if score #system in3_-4f_sumt matches 0.. run scoreboard players remove #system in3_-4f_sumt 1
#execute if score #system in3_-4f_sumt matches 0 if score #system in3_-4f_monsc matches ..10 positioned 2834 30 -849 run function pld:instances/instance3_0/floors/-4/monsters
#execute if score #system in3_-4f_sumt matches -1 run scoreboard players set #system in3_-4f_sumt 300
#更新傀儡状态
#execute if entity @e[limit=1,type=zombie,tag=in30_boss1,x=2834,y=31,z=-849,distance=..21] run function pld:instances/instance3_0/floors/-4/boss/add1/tick
#execute unless entity @e[limit=1,type=zombie,tag=in30_boss1,x=2834,y=31,z=-849,distance=..21] run bossbar set pld:instance3_0_add1hp visible false
#
#execute if entity @e[limit=1,type=zombie,tag=in30_boss2,x=2834,y=31,z=-849,distance=..21] run function pld:instances/instance3_0/floors/-4/boss/add2/tick
#execute unless entity @e[limit=1,type=zombie,tag=in30_boss2,x=2834,y=31,z=-849,distance=..21] run bossbar set pld:instance3_0_add2hp visible false
#
#execute if entity @e[limit=1,type=skeleton,tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] run function pld:instances/instance3_0/floors/-4/boss/add3/tick
#execute unless entity @e[limit=1,type=skeleton,tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] run bossbar set pld:instance3_0_add3hp visible false
#
# #boss技能
# #上仙
#execute if score #system in3_boss4_skillt matches 0.. if score #system in3_boss4_skillc matches 1.. run scoreboard players remove #system in3_boss4_skillt 1
#execute if score #system in3_boss4_skillt matches 0 as @e[tag=in30_boss4] at @s run function pld:instances/instance3_0/floors/-4/boss/skill


#上仙免疫负面效果
effect clear @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] slowness

effect give @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100000 3

#更新bossbar血量
execute as @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] store result score @s monster_health run data get entity @s Health
execute store result bossbar pld:instance3_0_boss4hp value run scoreboard players get @e[limit=1,type=zombie,tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] monster_health


#检查boss被击杀，过关
execute if entity @e[type=armor_stand,tag=in30_-4] unless entity @e[tag=in30_boss4] run function pld:instances/instance3_0/floors/-4/success

#时间到 没有击杀boss 则失败
execute if score #system in3_-4f_time matches 0.. run scoreboard players remove #system in3_-4f_time 1
execute if score #system in3_-4f_time matches 0 run function pld:instances/instance3_0/floors/-4/fail

