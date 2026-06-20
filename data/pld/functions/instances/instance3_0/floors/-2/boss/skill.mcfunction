#粒子效果
particle minecraft:flame ~ ~ ~ 1 1 1 0 100 force
#tellraw
tellraw @a[x=2834,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.boss_skill2"}
#实际效果
effect give @s strength 5 2
effect give @s speed 5 15
#cd：10s
scoreboard players set #system in3_boss2_skillt 400

