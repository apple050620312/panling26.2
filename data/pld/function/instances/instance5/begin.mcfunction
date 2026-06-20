#重置技能
scoreboard players set #system instance5_phase 0

scoreboard players set #system instance5_skillx 0
scoreboard players set #system instance5_phase 0
#设置盘古血量
scoreboard players set #system instance5_bosshp 8
#传送
tp @a[x=-184,y=98,z=-821,distance=..40,scores={dragon=1,bird=1,tiger=1,turtle=1}] 3175 132 -1839 90 -60
execute as @a[x=-184,y=98,z=-821,distance=..40] unless entity @s[scores={dragon=1,bird=1,tiger=1,turtle=1}] run function pld:instances/instance5/not_finish_mission

#强加载
forceload add 3191 -1877 3059 -1895
#设置重生点
spawnpoint @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] 3250 127 -1857
#设置玩家复活次数
scoreboard players set @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] instance5_relife 0

scoreboard players set @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] feather_mainland -1

#进度-触摸大茧
advancement grant @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={race=0},advancements={pld:mission/shen/main/main10=true}] only pld:mission/shen/main/main11
advancement grant @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={race=1},advancements={pld:mission/yao/main/main13=true}] only pld:mission/yao/main/main14
advancement grant @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={race=2},advancements={pld:mission/xian/main/main11=true}] only pld:mission/xian/main/main12
advancement grant @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={race=3},advancements={pld:mission/zhan/main/main12=true}] only pld:mission/zhan/main/main13
advancement grant @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,scores={race=4},advancements={pld:mission/ren/main/main11=true}] only pld:mission/ren/main/main12

#清理怪物
execute as @e[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303,type=!player] run function pld:system/tp_and_kill_self


kill @e[x=2992,y=-10000,z=-2000,dx=271,dy=10000,dz=303]

bossbar set pl:instance5_fire visible false
bossbar set pl:instance5_light_left visible false
bossbar set pl:instance5_light_right visible false
bossbar set pl:instance5_water visible false
bossbar set pl:instance5_swamp visible false
bossbar set pl:instance5_mountain visible false
bossbar set pl:instance5_wind visible false
bossbar set pl:instance5_sky visible false
bossbar set pl:instance5_earth visible false

#进本缓冲标记
scoreboard players set #system instance5_reset 1

#激活阶段
schedule clear pld:instances/instance5/reset
schedule function pld:instances/instance5/reset 5s
schedule clear pld:instances/instance5/phase1
schedule function pld:instances/instance5/phase1 10s