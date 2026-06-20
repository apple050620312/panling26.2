tellraw @s[scores={bird=1}] {"translate":"pl.info.intobirdtest","color":"gray"}
#scoreboard players set @s[scores={bird=0}] birdtime 4200
#异步
scoreboard players set @s[scores={bird=0}] birdtime 1050

scoreboard players set @s[scores={bird=0}] feather_mainland -1
scoreboard players set @s[scores={bird=0}] in_test_check 1
scoreboard players set @s[scores={bird=0}] bird_kill 0
execute unless entity @a[x=2471,y=33,z=38,distance=..19] run tp @e[type=!player,x=2471,y=33,z=38,distance=..19] 2471 -1000 38
tp @s[scores={bird=0}] 2471 33 63 -180 0