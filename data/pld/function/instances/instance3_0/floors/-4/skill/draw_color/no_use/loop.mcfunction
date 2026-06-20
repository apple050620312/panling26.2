execute as @e[type=marker,tag=draw_marker] at @s run function pld:instances/instance3_0/floors/-4/skill/draw_color/draw
execute if score #system loop matches 40 run kill @e[tag=draw_marker]

execute unless score #system loop matches 41.. run scoreboard players add #system loop 1
execute if score #system loop matches ..39 run function pld:instances/instance3_0/floors/-4/skill/draw_color/loop