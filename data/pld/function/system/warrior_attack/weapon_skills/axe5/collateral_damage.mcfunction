# @e[tag=warrior_tag]
# @s player_2atk

#眩晕
execute as @e[tag=warrior_tag,tag=!instance_boss] unless data entity @s NoAI run function pld:system/warrior_attack/weapon_skills/axe5/vertigo 

#输入傷害值
scoreboard players operation @e[tag=warrior_tag] entity_hurt_temp = @s player_2atk
scoreboard players operation @e[tag=warrior_tag] entity_hurt_temp = attack_damage float2
scoreboard players set #temp temp 150 
scoreboard players operation @e[tag=warrior_tag] entity_hurt_temp *= #temp temp

#受伤函数
tag @s add if_death_count
execute as @e[tag=warrior_tag] run function pld:system/warrior_attack/hurt/hurt_effect
tag @s remove if_death_count

#受伤特效
execute at @e[tag=warrior_tag] run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.2 100 force 

#附加傷害状态结束
scoreboard players set @s weapon_skill_axe5_5ticks -1
