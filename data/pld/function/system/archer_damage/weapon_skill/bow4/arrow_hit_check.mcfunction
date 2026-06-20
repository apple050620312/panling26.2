#bow4的箭命中了目标
#语境
# @p[tag=hit_player] 发射的玩家
# @s 被命中的玩家

#检查追击情况
execute if predicate pld:effect_check/slowness run function pld:system/archer_damage/weapon_skill/bow4/pursuit
