#冷却中
execute if score @s weapon_skill_cool_5ticks matches 1.. run title @s actionbar {"translate":"pl.info.weapon_skill_cooling"}  
#冷却完毕
execute unless score @s weapon_skill_cool_5ticks matches 1.. run function pld:system/warrior_attack/weapon_skills/check_weapon

#因为在此结算，所以不再检查剩余
scoreboard players set @s right_click_check 0
