tag @s add star_arrow_target
execute as @e[tag=monster,distance=..10] if score @s monster_uuid_0 = @e[type=marker,limit=1,tag=star_arrow_target] weapon_skill_crossbow5_arrow_target run tag @s add star_arrow_target
tag @s remove star_arrow_target

#如果没有目标 那么新增目标
execute unless entity @e[tag=monster,tag=star_arrow_target] run function pld:system/archer_damage/weapon_skill/crossbow5/arrow_new_target


execute as @e[tag=monster,tag=star_arrow_target] run execute at @s run summon marker ~ ~0.75 ~ {Tags:["direct_target"]}

#如果有目标 向目标偏转
execute if entity @e[tag=monster,tag=star_arrow_target] run function pld:system/archer_damage/weapon_skill/crossbow5/arrow_rot_check

#命中目标
execute if entity @e[type=marker,tag=direct_target,distance=..0.5] run function pld:system/archer_damage/weapon_skill/crossbow5/arrow_hit

execute as @e[type=marker,tag=direct_target] run kill @s

tag @e[tag=star_arrow_target] remove star_arrow_target

#如果这个方块是实体方块？清理自身
#execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run kill @s 

#向前移动
tp @s ^ ^ ^0.5

#粒子效果
execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 10

#时间到 消失
scoreboard players remove @s[scores={weapon_skill_crossbow5_arrow_tick=0..}] weapon_skill_crossbow5_arrow_tick 1
execute if entity @s[scores={weapon_skill_crossbow5_arrow_tick=0}] run kill @s


