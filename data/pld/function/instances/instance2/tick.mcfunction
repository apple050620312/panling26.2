#清除玩家身上的火焰抵抗
effect clear @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64,scores={race=..2}] fire_resistance
effect clear @a[x=1052,y=3,z=864,dx=82,dy=55,dz=64,scores={race=4}] fire_resistance
#护卫效果-给予核心抵抗效果

execute if entity @e[type=skeleton,tag=instance2_guard,x=1052,y=3,z=864,dx=82,dy=55,dz=64] run scoreboard players set #system instance2_armor 1
execute if score #system instance2_armor matches 1 run effect give @e[type=blaze,tag=core,tag=instance2] minecraft:resistance 1 3
execute if score #system instance2_armor matches 1 unless entity @e[type=skeleton,tag=instance2_guard,x=1052,y=3,z=864,dx=82,dy=55,dz=64] run function pld:instances/instance2/break_armor




#宠物核心反应
execute unless entity @e[type=magma_cube,tag=instance2_body,x=1052,y=3,z=864,dx=82,dy=55,dz=64] if score #system instance2_weak matches 1.. if entity @e[type=blaze,tag=core2] run function pld:instances/instance2/core2_kill
#计时
execute if score #system instance2_weak matches 1.. if score #system instance2_tick matches 1.. run scoreboard players remove #system instance2_tick 1
execute if score #system instance2_weak matches 1.. if score #system instance2_tick matches 0 run function pld:instances/instance2/phase_fail

scoreboard players set #system instance2_weak_c 0
#成功减血
execute if score #system instance2_weak matches 1 unless entity @e[x=1095,y=20,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak matches 2 unless entity @e[x=1089,y=17,z=912,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak matches 3 unless entity @e[x=1083,y=20,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak matches 4 unless entity @e[x=1089,y=25,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1

execute if score #system instance2_weak2 matches 1 unless entity @e[x=1095,y=20,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak2 matches 2 unless entity @e[x=1089,y=17,z=912,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak2 matches 3 unless entity @e[x=1083,y=20,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1
execute if score #system instance2_weak2 matches 4 unless entity @e[x=1089,y=25,z=914,distance=..2,type=blaze,tag=core] run scoreboard players add #system instance2_weak_c 1

execute if score #system instance2_weak_c matches 2 run function pld:instances/instance2/phase_success

#动画
execute if score #system instance2_partic matches 1.. run function pld:instances/instance2/animation

#bossbar 展示

execute store result bossbar pl:instance2_boss value run scoreboard players get #system instance2_hp
execute store result bossbar pl:instance2_core value run data get entity @e[limit=1,type=blaze,tag=core1,tag=core,x=1052,y=3,z=864,dx=82,dy=55,dz=64] Health 
execute store result bossbar pl:instance2_core2 value run data get entity @e[limit=1,type=blaze,tag=core2,tag=core,x=1052,y=3,z=864,dx=82,dy=55,dz=64] Health 
