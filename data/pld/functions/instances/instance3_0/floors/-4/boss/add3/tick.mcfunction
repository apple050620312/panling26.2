bossbar set pld:instance3_0_add3hp visible true
execute store result bossbar pld:instance3_0_add3hp value run data get entity @e[limit=1,type=skeleton,tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] Health 

#珑
#傀儡释放技能
execute if score #system in3_add3_skillt matches 0.. run scoreboard players remove #system in3_add3_skillt 1
execute if score #system in3_add3_skillt matches 0 as @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] at @s run function pld:instances/instance3_0/floors/-4/boss/add3/skill
#玩家击杀怪物，破防
execute as @a[x=2834,y=31,z=-849,distance=..21,scores={instance3_kill=1..}] run function pld:instances/instance3_0/floors/-4/boss/add3/anti_check

#破防冷却
execute if score #system in3_add3_anti_cool matches 0.. run scoreboard players remove #system in3_add3_anti_cool 1
