#效果发动
#execute as @e[tag=monster,distance=..5] unless score @s weapon_burn_tag matches 1 run function pld:system/warrior_attack/weapon_skills/axe3/burn
scoreboard players set @s weapon_skill_axe4_5ticks 25

#粒子效果&文本提示&音效
#particle minecraft:flame ~ ~1 ~ 1 0.5 1 0 30 force @a
playsound minecraft:item.axe.scrape ambient @s ~ ~1 ~ 100
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_axe4"}
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_axe4"}

#进入cd
scoreboard players set @s weapon_skill_cool_5ticks 100
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @s skill_success 1