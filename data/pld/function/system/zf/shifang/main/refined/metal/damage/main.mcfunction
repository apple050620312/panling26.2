#伤害值
scoreboard players set #temp damage_middle 0
scoreboard players operation #temp damage_middle += @s zf_str
scoreboard players operation #temp damage_middle *= zf_mp_refined_metal percent
scoreboard players operation #temp damage_middle /= 100 int

execute as @e[tag=metaltag] run function pld:system/zf/shifang/main/refined/metal/damage/monster

#仇恨
function pld:system/zf/shifang/threat/main
#如果击杀了，掉落物以及计数结算
tag @s add the_killer
execute as @e[tag=metaltag] at @s if score @s monster_health matches ..0 run function pld:system/zf/shifang/loot
tag @s remove the_killer
execute as @e[tag=metaltag] at @s if score @s monster_health matches ..0 run tag @s add death_count
function pld:system/zf/shifang/killcount/main
#命中效果
effect give @e[tag=metaltag] instant_damage 1 31 false
effect give @e[tag=metaltag] instant_health 1 31 false
#血量覆盖
execute as @e[tag=metaltag] at @s if score @s monster_health matches ..0 run scoreboard players reset @s
execute store success score @s[scores={zfsuccess=0}] zfsuccess as @e[tag=metaltag] store result entity @s Health double 1 run scoreboard players get @s monster_health
