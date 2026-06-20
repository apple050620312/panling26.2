#粒子效果
particle minecraft:happy_villager ~ ~ ~ 5 5 5 0 100
#tellraw
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss_skill1"}
#实际效果
effect give @e[distance=..10,tag=monster,tag=undead] instant_damage 1 3


#上仙复制技能
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss_skill4_4"}
execute at @e[tag=in30_boss4] run particle minecraft:happy_villager ~ ~ ~ 5 5 5 0 100
execute at @e[tag=in30_boss4] run effect give @e[distance=..10,tag=monster,tag=undead] instant_damage 1 3

#cd
scoreboard players set #system in3_add1_skillt 200