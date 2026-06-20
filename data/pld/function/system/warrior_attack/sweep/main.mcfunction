
#音效和粒子效果
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 1
particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1

#标记被横扫对象
execute as @e[tag=warrior_tag] at @s run tag @e[tag=monster,distance=..2,tag=!warrior_tag] add sweeped
execute unless entity @e[tag=warrior_tag] positioned ^ ^ ^1 run tag @e[tag=monster,distance=..2,tag=!warrior_tag] add sweeped

execute if entity @e[tag=sweeped] run function pld:system/warrior_attack/sweep/main2

#横扫冷却 0.4s
scoreboard players set @s sweep_cool 2


#怪物标记清除
tag @e[tag=sweeped] remove sweeped

