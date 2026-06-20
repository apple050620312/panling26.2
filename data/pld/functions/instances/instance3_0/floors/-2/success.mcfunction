kill @e[type=armor_stand,tag=in30_-2]
kill @e[type=!player,x=2834,y=30,z=-763,distance=..21]
scoreboard players set #system in3_-2f_phase 0
tellraw @a[x=2834,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.success"}
#5s后，传送
scoreboard players set @a[x=2834,y=30,z=-763,distance=..21] in3_-2f_time 100