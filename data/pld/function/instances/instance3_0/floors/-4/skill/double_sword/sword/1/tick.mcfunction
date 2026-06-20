execute as @p[tag=sword_1] at @s run tp @e[type=minecraft:armor_stand,tag=in3_skill_tag,tag=sword_1] ~ ~2.5 ~
execute as @e[type=minecraft:armor_stand,tag=in3_skill_tag,tag=sword_1] at @s run tp @e[type=marker,tag=sword_1_particle] ~ ~0.5 ~

execute as @e[type=marker,tag=sword_1_particle] at @s run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/1/particle/sword/tick
