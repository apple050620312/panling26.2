#效果发动
execute as @e[distance=..5,tag=undead] unless data entity @s NoAI run function pld:system/warrior_attack/weapon_skills/sword1/vertigo

#粒子效果&文本提示&音效
execute at @s run particle minecraft:cloud ~ ~2 ~ 0.2 0.2 0.2 0.1 30 force @a
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_sword1"}
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_sword1"}

#进入cd
scoreboard players set @s weapon_skill_cool_5ticks 100
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @s skill_success 1