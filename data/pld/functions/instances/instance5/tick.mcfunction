#预加载阶段，清理怪物
execute if score #system instance5_reset matches 1 run execute as @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=!player,type=!armor_stand] run function pld:system/tp_and_kill_self

#ban钓鱼竿
kill @e[type=minecraft:fishing_bobber,x=2992,y=0,z=-2000,dx=271,dy=255,dz=303]

#检测破阵
execute if score #system instance5_phase matches 1 if score #system instance5_bosshp matches 2.. if score #system instance5_skillx matches 2 run function pld:instances/instance5/phase2
execute if score #system instance5_phase matches 1 if score #system instance5_bosshp matches 1 if score #system instance5_skillx matches 4 run function pld:instances/instance5/phase2

#坤地计时
execute if score #system instance5_eartht matches 1.. run scoreboard players remove #system instance5_eartht 1
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_earth matches 1 run function pld:instances/instance5/earth/actiontick

#乾天晶时常存在
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 if block 3123 144 -1839 minecraft:snow_block unless entity @e[type=zombie,tag=sky] run function pld:instances/instance5/sky/zombie
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 if block 3123 144 -1839 minecraft:snow_block if entity @e[type=zombie,tag=sky,nbt={Pos:[140.0d]}] run function pld:instances/instance5/sky/zombie
#乾天-获取晶血量
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 as @e[type=zombie,tag=sky] store result score @s monster_health run data get entity @s Health
#优化-乾天装置检测
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 if entity @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=ghast] unless block 3122 144 -1839 snow_block run clone 3121 102 -1868 3131 114 -1859 3117 137 -1843
#乾天-防止玩家进云
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 run tellraw @a[x=3123,y=141,z=-1839,distance=..6] {"translate":"pl.info.instance5.sky_cloud_kick"}
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 run tp @a[x=3123,y=141,z=-1839,distance=..6] 3175 133 -1839 

#乾天计时
execute if score #system instance5_skyt matches 1.. run scoreboard players remove #system instance5_skyt 1
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_sky matches 1 run function pld:instances/instance5/sky/actiontick

#离火tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_fire matches 1 run function pld:instances/instance5/fire/tick

#震雷tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_light matches 1 run function pld:instances/instance5/light/tick

#艮山tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_mt matches 1 run function pld:instances/instance5/mountain/tick

#巽风tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_wind matches 1 run function pld:instances/instance5/wind/tick

#坎水tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_water matches 1 run function pld:instances/instance5/water/tick

#兑泽tick
execute if score #system instance5_phase matches 1 if score @e[tag=instance5_skill,limit=1] instance5_swamp matches 1 run function pld:instances/instance5/swamp/tick

#阶段二时常效果
execute if score #system instance5_phase matches 2 if score #system instance5_bosshp matches 1.. run effect give @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={job=0}] weakness 5 0
execute if score #system instance5_phase matches 2 if score #system instance5_bosshp matches 1.. run effect give @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={job=1}] slowness 5 0
execute if score #system instance5_phase matches 2 if score #system instance5_bosshp matches 1.. run effect give @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={job=2}] blindness 5 0
#阶段二凋零时常效果
execute if score #system instance5_phase matches 2 run effect give @a[x=3084,y=131,z=-1840,distance=..15] minecraft:wither 5 3

#bossbar 展示
bossbar set pl:instance5_boss players @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303]
bossbar set pl:instance5_core players @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303]
execute store result bossbar pl:instance5_boss value run scoreboard players get #system instance5_bosshp
execute unless entity @e[limit=1,type=blaze,tag=core,x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run bossbar set pl:instance5_core visible false
execute if score #system instance5_bosshp matches 1.. run bossbar set pl:instance5_boss visible true
execute unless score #system instance5_bosshp matches 1.. run bossbar set pl:instance5_boss visible false
execute if score #system instance5_phase matches 2 if entity @e[limit=1,type=blaze,tag=core,x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] run bossbar set pl:instance5_core visible true 
execute store result bossbar pl:instance5_core value run data get entity @e[limit=1,type=blaze,tag=core,x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] Health 
#长老帮助倒计时
execute if score #system instance5_helptk matches 1.. run scoreboard players remove #system instance5_helptk 1
execute if score #system instance5_phase matches 1 run function pld:instances/instance5/help