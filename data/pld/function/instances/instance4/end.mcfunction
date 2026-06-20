#结束
scoreboard players set @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] gold_chest 1
scoreboard players set @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] feather_mainland 1
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate": "pl.info.instance4.end"}
kill @e[type=armor_stand,tag=instance4]
fill 973 65 1283 913 71 1215 air replace water
fill 973 64 1283 913 60 1215 air replace water
tp @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] 952 72 1185 90 ~