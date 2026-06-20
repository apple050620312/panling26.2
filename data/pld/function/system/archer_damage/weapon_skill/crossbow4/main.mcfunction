#提供效果
#给予玩家移动速度加成
attribute @p[tag=shooter] generic.movement_speed modifier add 11-5-5-5-1 "蛟龙弩-武器技速度加成-1" 0.04 multiply_base
attribute @p[tag=shooter] generic.movement_speed modifier add 11-5-5-5-2 "蛟龙弩-武器技速度加成-2" 0.04 multiply_base
attribute @p[tag=shooter] generic.movement_speed modifier add 11-5-5-5-3 "蛟龙弩-武器技速度加成-3" 0.04 multiply_base
attribute @p[tag=shooter] generic.movement_speed modifier add 11-5-5-5-4 "蛟龙弩-武器技速度加成-4" 0.04 multiply_base
attribute @p[tag=shooter] generic.movement_speed modifier add 11-5-5-5-5 "蛟龙弩-武器技速度加成-5" 0.04 multiply_base

#给予玩家箭矢强度加成
scoreboard players set @p[tag=shooter] weapon_skill_crossbow4_damage 1

#持续时间
scoreboard players set @p[tag=shooter] weapon_skill_crossbow4_5ticks 25

#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
playsound minecraft:ambient.underwater.exit player @p[tag=shooter] ~ ~ ~
execute as @p[tag=shooter] unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_crossbow4"}
execute as @p[tag=shooter] if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_crossbow4"}

#武器技进入冷却
scoreboard players set @p[tag=shooter] weapon_skill_cool_5ticks 100
#应用冷却缩减
execute as @p[tag=shooter] run function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @p[tag=shooter] skill_success 1