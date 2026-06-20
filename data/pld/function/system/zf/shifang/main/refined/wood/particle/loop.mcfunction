#loop   main 向 target 移动并投放粒子 @e[type=marker,tag=wood_line_particle_main,limit=1] @e[type=marker,tag=wood_line_particle_target,limit=1]
execute facing entity @e[type=marker,tag=wood_line_particle_target,limit=1] eyes run tp @s ^ ^ ^0.1

#粒子效果
particle composter ~ ~ ~

execute at @s if entity @e[type=marker,tag=wood_line_particle_target,limit=1,distance=..1] as @e[type=marker,tag=wood_line_particle] run kill @s

scoreboard players add #temp loop 1

#结束 条件一 到附近了 条件二 循环上限为80
execute at @s unless entity @e[type=marker,tag=wood_line_particle_target,distance=..1] unless score #temp loop matches 80.. run function pld:system/zf/shifang/main/refined/wood/particle/loop


