#输入傷害值
execute store result score #temp entity_hurt_temp run attribute @s max_health get 20

#受伤函数
tag @s add if_death_count
execute as @e[tag=warrior_tag] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @s remove if_death_count

#受伤特效
execute at @e[tag=warrior_tag] run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.2 100 force

#冷却 0.6秒
scoreboard players set @s weapon_skill_sword6_main_pursuit_cool_5ticks 3