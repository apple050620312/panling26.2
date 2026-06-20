#给箭矢增加缓慢buff
data merge entity @s {CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:100}]}


execute as @p[tag=shooter] run function pld:system/archer_damage/weapon_skill/bow4/skill


scoreboard players set @p[tag=shooter] skill_success 1