execute if score #system in3_boss4_skillc matches 1 unless entity @e[x=2834,y=31,z=-849,distance=..21,tag=in30_boss1] run function pld:instances/instance3_0/floors/-4/boss/add1/summon
execute if score #system in3_boss4_skillc matches 2 unless entity @e[x=2834,y=31,z=-849,distance=..21,tag=in30_boss2] run function pld:instances/instance3_0/floors/-4/boss/add2/summon
execute if score #system in3_boss4_skillc matches 3 unless entity @e[x=2834,y=31,z=-849,distance=..21,tag=in30_boss3] run function pld:instances/instance3_0/floors/-4/boss/add3/summon

scoreboard players set #system in3_boss4_skillt 1180
scoreboard players add #system in3_boss4_skillc 1
execute if score #system in3_boss4_skillc matches 4.. run scoreboard players set #system in3_boss4_skillc 1

