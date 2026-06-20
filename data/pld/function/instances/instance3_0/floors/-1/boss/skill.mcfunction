#粒子效果
particle minecraft:happy_villager ~ ~ ~ 5 5 5 0 100
#tellraw
tellraw @a[x=2791,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.boss_skill1"}
#实际效果
effect give @e[distance=..10,tag=monster,tag=undead] instant_damage 1 2
#cd：10s
scoreboard players set #system in3_boss1_skillt 200