#选择目标 画圈
tag @p[scores={instance3_floor=-4}] add particle_mark
scoreboard players set @p[tag=particle_mark] loop 0
execute as @p[tag=particle_mark] at @s run function pld:instances/instance3_0/floors/-4/skill/death_penalty/particle/loop


execute if score #system in3_skill_dp_mark matches 0 as @p[tag=particle_mark] at @s run particle dust 0 0 0 1 ~ ~ ~ 1.5 0 1.5 0 10
execute if score #system in3_skill_dp_mark matches 1 as @p[tag=particle_mark] at @s run particle cloud ~ ~ ~ 1.5 0 1.5 0 5

scoreboard players reset @a[tag=particle_mark] loop 
tag @a[tag=particle_mark] remove particle_mark