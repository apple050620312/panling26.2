#下降
tp @s ~ ~-0.5 ~

#粒子效果
particle flame ~ ~5 ~ 0 0 0 0.2 20 force
particle minecraft:large_smoke ~ ~5 ~ 0 0 0 0.2 30 force

#如果触地 那么爆炸并造成伤害
scoreboard players add @s temp 1
execute if score @s temp matches 10 run function pld:system/archer_damage/weapon_skill/bow6/fall_sun/sun_explode

