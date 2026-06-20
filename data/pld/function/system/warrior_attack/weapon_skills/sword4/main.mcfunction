#效果-切换状态效果
#execute positioned ~ ~1.62 ~ positioned ^ ^ ^ run function pld:system/warrior_attack/weapon_skills/sword3/get_positon
execute if score @s weapon_skill_sword4_switch matches 0 run function pld:system/warrior_attack/weapon_skills/sword4/switch_0_to_1
execute if score @s weapon_skill_sword4_switch matches 1 run function pld:system/warrior_attack/weapon_skills/sword4/switch_1_to_0

execute if score @s weapon_skill_sword4_switch matches 2 run scoreboard players set @s weapon_skill_sword4_switch 1


#粒子效果&文本提示&音效
#particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a
#playsound minecraft:entity.generic.explode ambient @s ~ ~1 ~ 
#title @s actionbar {"translate":"pl.info.weapon_skill_sword4"}

#进入cd
scoreboard players set @s weapon_skill_cool_5ticks 25
#应用冷却缩减
function pld:system/weapon_skill_cool/reduce_cool

scoreboard players set @s skill_success 1