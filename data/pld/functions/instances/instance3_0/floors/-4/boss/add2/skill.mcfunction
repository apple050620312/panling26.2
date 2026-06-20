#粒子效果
particle minecraft:flame ~ ~ ~ 1 1 1 0 100 force
#tellraw
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss_skill2"}
#实际效果
effect give @s strength 5 2
effect give @s speed 5 15

#上仙复制技能
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss_skill4_5"}

#粒子效果
execute at @e[tag=in30_boss4] run particle minecraft:flame ~ ~ ~ 1 1 1 0 100 force
#实际效果
execute as @e[tag=in30_boss4] run effect give @s strength 5 2
execute as @e[tag=in30_boss4] run effect give @s speed 5 8

#cd：10s
scoreboard players set #system in3_add2_skillt 450