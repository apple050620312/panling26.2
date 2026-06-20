#持续时间
scoreboard players set @p[tag=shooter] weapon_skill_crossbow5_5ticks 25

#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
playsound minecraft:block.amethyst_block.chime player @p[tag=shooter] ~ ~ ~ 1
execute as @p[tag=shooter] unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_crossbow5"}
execute as @p[tag=shooter] if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_crossbow5"}


#武器技进入冷却
scoreboard players set @p[tag=shooter] weapon_skill_cool_5ticks 50
#应用冷却缩减
execute as @p[tag=shooter] run function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @p[tag=shooter] skill_success 1
