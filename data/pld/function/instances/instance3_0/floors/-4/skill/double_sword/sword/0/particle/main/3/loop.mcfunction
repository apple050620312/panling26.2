execute positioned ~ ~0.2 ~ rotated ~ 0 run particle dust 0 0 0 1 ^ ^ ^3 0 1 0 0.1 0 force
execute unless score @s loop matches 101.. run scoreboard players add @s loop 1
execute rotated ~3.6 ~ if score @s loop matches ..99 run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/0/particle/main/3/loop
