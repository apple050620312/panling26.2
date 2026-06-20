#重置副本
scoreboard players set #system instance4_bosshp 7
function pld:instances/instance4/phase_time_re
scoreboard players set #system instance4_tag 1
execute as @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=!player] run function pld:system/tp_and_kill_self

#传送玩家
tp @a[x=940,y=159,z=1316,distance=..5,limit=5] 944 59 1269
#启动副本 
kill @e[type=armor_stand,tag=instance4] 
summon armor_stand 943 109 1255 {Tags:["instance4"]}
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate":"pl.info.instance4.begin"}
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate":"pl.info.instance4.success"}
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate":"pl.info.instance4.underwater1"}
schedule clear pld:instances/instance4/phase
schedule function pld:instances/instance4/phase 1s

