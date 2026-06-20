execute as @e[tag=metaltag] at @s run summon snowball ~ ~2.5 ~ {Motion:[0.0d,-10.0d,0.0d],Tags:["temp"]}
execute at @e[tag=metaltag] run data modify entity @e[tag=temp,limit=1,sort=nearest] Owner set from entity @s UUID
