#1s
#==================================非玩家实体1s==================================#
#execute as @e[type=!player] run function pld:ticks/entity/1s

#==================================玩家1s==================================#
#execute as @a run function pld:ticks/player/1s

#特殊npc-姜子牙
execute if loaded -569 99 454 if loaded -588 103 455 if loaded -605 100 455 run function pld:npcs/qiansi/te33_check

#假盘古bossbar与强加载
#execute unless entity @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run forceload remove 3191 -1877 3059 -1895
function pld:instances/instance5/bossbar_show_1s

#镇妖塔地下层
function pld:instances/instance3_0/1s

#哭霸bossbar
bossbar set pld:instance4_bosshp players @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70]
bossbar set pld:instance4_waterboss players @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70]

#火魔bossbar
bossbar set pl:instance2_boss players @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64]
bossbar set pl:instance2_core players @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64]
bossbar set pl:instance2_core2 players @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64]

#始皇陵bossbar
bossbar set pl:instance1_stage players @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36]
bossbar set pl:instance1_boss players @a[x=2795,y=68,z=-432,dx=47,dy=27,dz=36]

#镇妖塔bossbar
bossbar set pld:instance3_bosshp players @a[x=2695,y=68,z=-905,dx=40,dy=10,dz=40]

#schedule function pld:ticks/1s 1s