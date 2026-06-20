#语境
# @s 被命中目标
# @p[tag=hit_player] 攻击的玩家
# 输入 #temp entity_hurt_temp 2位小数
scoreboard players operation #temp entity_hurt_temp = @e[type=armor_stand,tag=the_sun,limit=1] weapon_skill_bow6_sun_2damage

#tellraw yl_jiu_qiu {"score":{"name": "#temp","objective": "entity_hurt_temp"}}
#傷害给予
tag @p[tag=hit_player] add if_death_count
function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @p[tag=hit_player] remove if_death_count