#语境
# @p[tag=hit_player] 发射的玩家
# @s 被命中的怪物

#造成玩家150%箭矢强度的伤害
#粒子效果 暴击
execute at @s run particle falling_lava ~ ~1 ~ 0.2 0.2 0.2 0 20

#输入数值，并变成二位小数
scoreboard players operation #temp entity_hurt_temp = @p[tag=hit_player] archer_damage
scoreboard players operation #temp temp = #system weapon_skill_bow4_multiplier
scoreboard players operation #temp entity_hurt_temp *= #temp temp
scoreboard players set #temp temp 10
scoreboard players operation #temp entity_hurt_temp /= #temp temp

#受伤函数
tag @p[tag=hit_player] add if_death_count
execute as @s run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @p[tag=hit_player] remove if_death_count