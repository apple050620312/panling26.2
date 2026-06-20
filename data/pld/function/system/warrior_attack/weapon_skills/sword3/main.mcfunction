#效果
execute positioned ~ ~1.62 ~ positioned ^ ^ ^ run function pld:system/warrior_attack/weapon_skills/sword3/get_positon


#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
playsound minecraft:entity.generic.explode ambient @s ~ ~1 ~ 
execute unless score @s info_pos_weapon_skill matches 1 run title @s actionbar {"translate":"pl.info.weapon_skill_sword3"}
execute if score @s info_pos_weapon_skill matches 1 run tellraw @s {"translate":"pl.info.weapon_skill_sword3"}

#进入cd
scoreboard players set @s weapon_skill_cool_5ticks 50
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @s skill_success 1