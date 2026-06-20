#真盘战役结束后，开启循环，将仍然在内的玩家移出
spawnpoint @a[x=-380,y=175,z=-1470,distance=..500,gamemode=adventure] 205 54 -1771
tp @a[x=-380,y=175,z=-1470,distance=..500,gamemode=adventure] 179 44 19
scoreboard players set @a[x=-380,y=175,z=-1470,distance=..500,gamemode=adventure] feather_mainland 1
scoreboard players reset @a[x=-380,y=175,z=-1470,distance=..500,gamemode=adventure] in_final_battle