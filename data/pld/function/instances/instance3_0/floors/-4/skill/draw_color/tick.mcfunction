#染色
tag @a remove drawn_black
tag @a remove drawn_white
execute as @a[x=2834,y=31,z=-849,distance=..21] at @s if block ~ ~-1 ~ bedrock run function pld:instances/instance3_0/floors/-4/skill/draw_color/draw/black
execute as @a[x=2834,y=31,z=-849,distance=..21] at @s if block ~ ~-1 ~ end_stone run function pld:instances/instance3_0/floors/-4/skill/draw_color/draw/white

execute as @a[tag=drawn_black] at @s run particle dust 0 0 0 1 ~ ~ ~ 0.2 0.5 0.2 0 10 
execute as @a[tag=drawn_white] at @s run particle cloud ~ ~ ~ 0.2 0.5 0.2 0 5
