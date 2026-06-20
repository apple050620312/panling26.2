
execute positioned ~ ~0.2 ~ rotated ~ 0 positioned ^ ^ ^5 facing 2834 34 -849 run particle minecraft:cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
execute unless score @s loop matches 101.. run scoreboard players add @s loop 1
execute rotated ~3.6 ~ if score @s loop matches ..99 run function pld:instances/instance3_0/floors/-4/skill/explode/particle/explode/pre/1/b/loop

