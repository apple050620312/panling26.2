#身上携带阵法核心的，定时给予附近怪物仇恨
execute as @e[tag=core_attracted] at @s run summon snowball ~ ~2.5 ~ {Motion:[0.0d,-10.0d,0.0d],Tags:["temp"]}
execute at @e[tag=core_attracted] run data modify entity @e[tag=temp,limit=1,sort=nearest] Owner set from entity @s UUID
