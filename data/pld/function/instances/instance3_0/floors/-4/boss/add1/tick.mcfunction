bossbar set pld:instance3_0_add1hp visible true
execute store result bossbar pld:instance3_0_add1hp value run data get entity @e[limit=1,type=zombie,tag=in30_boss1,x=2834,y=31,z=-849,distance=..21] Health

#傀儡释放技能
execute if score #system in3_add1_skillt matches 0.. run scoreboard players remove #system in3_add1_skillt 1
execute if score #system in3_add1_skillt matches 0 as @e[tag=in30_boss1,x=2834,y=31,z=-849,distance=..21] at @s run function pld:instances/instance3_0/floors/-4/boss/add1/skill
