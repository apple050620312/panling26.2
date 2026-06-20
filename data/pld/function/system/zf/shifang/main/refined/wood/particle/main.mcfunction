# @s  @p[tag=wood_line_target2]
execute as @e[type=marker,tag=wood_line_particle] run kill @s
scoreboard players set #temp loop 0

#生成两个marker
execute at @s run summon marker ~ ~1 ~ {Tags:["wood_line_particle_main","wood_line_particle"]}
execute at @p[tag=wood_line_target2] run summon marker ~ ~1 ~ {Tags:["wood_line_particle_target","wood_line_particle"]}

#loop main 向target移动并投放粒子
execute as @e[type=marker,tag=wood_line_particle_main,limit=1] at @s run function pld:system/zf/shifang/main/refined/wood/particle/loop