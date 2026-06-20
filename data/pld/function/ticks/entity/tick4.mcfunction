#清理部分实体
execute as @s[type=tnt,tag=!pvp1] run kill @s
execute as @s[type=tnt_minecart] run kill @s


#区域怪物技能
execute as @s[type=wither_skeleton,tag=west_boss] run function pld:monsters/west/boss_skill/tick
