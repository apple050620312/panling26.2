bossbar set pld:instance3_0_add2hp visible true
execute store result bossbar pld:instance3_0_add2hp value run data get entity @e[limit=1,type=zombie,tag=in30_boss2,x=2834,y=31,z=-849,distance=..21] Health

#梓
#傀儡释放技能
execute if score #system in3_add2_skillt matches 300.. as @e[tag=in30_boss2,x=2834,y=31,z=-849,distance=..21] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score #system in3_add2_skillt matches 300.. as @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score #system in3_add2_skillt matches 0.. run scoreboard players remove #system in3_add2_skillt 1
execute if score #system in3_add2_skillt matches 0 as @e[tag=in30_boss2,x=2834,y=31,z=-849,distance=..21] at @s run function pld:instances/instance3_0/floors/-4/boss/add2/skill
