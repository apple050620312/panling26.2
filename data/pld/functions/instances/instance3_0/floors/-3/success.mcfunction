kill @e[type=armor_stand,tag=in30_-3]
kill @e[type=!player,x=2834,y=31,z=-806,distance=..21]
scoreboard players set #system in3_-3f_phase 0
tellraw @a[x=2834,y=31,z=-806,distance=..21] {"translate":"pl.info.instance3_0.success"}
#5s后，传送
scoreboard players set @a[x=2834,y=31,z=-806,distance=..21] in3_-3f_time 100