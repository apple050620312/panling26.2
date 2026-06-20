#根据@s信息，对@e[tag=monster,tag=star_arrow_target] 造成穿甲傷害

#输入傷害值
scoreboard players operation @e[tag=monster,tag=star_arrow_target] entity_hurt_temp = @s weapon_skill_crossbow5_arrow_1damage
scoreboard players set #temp temp 1000
scoreboard players operation @e[tag=monster,tag=star_arrow_target] entity_hurt_temp *= #temp temp

#受伤函数
tag @s add the_marker
execute as @a if score @s player_uid = @e[type=marker,tag=the_marker,limit=1] weapon_skill_crossbow5_arrow_owner_uid run tag @s add if_death_count
execute as @e[tag=monster,tag=star_arrow_target] run function pld:system/warrior_attack/hurt/hurt_effect

execute as @a[tag=if_death_count,limit=1] run function pld:equipment_lock/equipment/armor/set_bonus/when_cause_damage

tag @a remove if_death_count
tag @s remove the_marker
#受伤特效
execute at @e[tag=monster,tag=star_arrow_target] run particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.2 100 force 

#清理子弹
kill @s
