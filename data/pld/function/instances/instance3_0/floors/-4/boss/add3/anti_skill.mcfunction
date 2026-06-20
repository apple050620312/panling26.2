execute if score #system in3_add3_skillc matches 0 run scoreboard players set #system in3_tc 1
execute if score #system in3_add3_skillc matches 1.. run scoreboard players remove #system in3_add3_skillc 1
effect clear @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance
execute if score #system in3_add3_skillc matches 5 run effect give @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance 100 4
execute if score #system in3_add3_skillc matches 4 run effect give @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance 100 3
execute if score #system in3_add3_skillc matches 3 run effect give @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance 100 2
execute if score #system in3_add3_skillc matches 2 run effect give @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance 100 1
execute if score #system in3_add3_skillc matches 1 run effect give @e[tag=in30_boss3,x=2834,y=31,z=-849,distance=..21] resistance 100 0

execute if score #system in3_add3_skillc matches 0.. unless score #system in3_tc matches 1 run tellraw @a[x=2834,y=31,z=-849,distance=..21] [{"translate":"pl.info.instance3_0.boss_skill3_anti1"},{"score":{"name": "#system","objective": "in3_add3_skillc"},"color": "white"},{"translate":"pl.info.instance3_0.boss_skill3_anti2"}]
scoreboard players set #system in3_tc 0

execute if score #system in3_boss4_skillc matches 0 run scoreboard players set #system in3_tc 1
execute if score #system in3_boss4_skillc matches 1.. run scoreboard players remove #system in3_boss4_skillc 1
effect clear @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance
execute if score #system in3_boss4_skillc matches 5 run effect give @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100 4
execute if score #system in3_boss4_skillc matches 4 run effect give @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100 3
execute if score #system in3_boss4_skillc matches 3 run effect give @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100 2
execute if score #system in3_boss4_skillc matches 2 run effect give @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100 1
execute if score #system in3_boss4_skillc matches 1 run effect give @e[tag=in30_boss4,x=2834,y=31,z=-849,distance=..21] resistance 100 0

execute if score #system in3_boss4_skillc matches 0.. unless score #system in3_tc matches 1 run tellraw @a[x=2834,y=31,z=-849,distance=..21] [{"translate":"pl.info.instance3_0.boss_skill4_6_anti1"},{"score":{"name": "#system","objective": "in3_boss4_skillc"},"color": "white"},{"translate":"pl.info.instance3_0.boss_skill4_6_anti2"}]
scoreboard players set #system in3_tc 0

#进入冷却 2s
scoreboard players set #system in3_-3f_anti_cool 40

