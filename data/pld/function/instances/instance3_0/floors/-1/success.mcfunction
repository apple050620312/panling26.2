kill @e[type=armor_stand,tag=in30_-1]
kill @e[type=!player,x=2791,y=30,z=-763,distance=..21]
scoreboard players set #system in3_-1f_phase 0
tellraw @a[x=2791,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.success"}
#5s后，传送
scoreboard players set @a[x=2791,y=30,z=-763,distance=..21] in3_-1f_time 100