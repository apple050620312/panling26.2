#给箭矢增加标记
function pld:system/archer_damage/shoot/target_arrow

#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
#playsound entity.arrow.hit_player player @p[tag=shooter] ~ ~ ~
#title @p[tag=shooter] actionbar {"translate":"pl.info.weapon_skill_bow5"}


#武器技进入冷却
#scoreboard players set @p[tag=shooter] weapon_skill_cool_5ticks 25

# scoreboard players set @p[tag=shooter] skill_success 1