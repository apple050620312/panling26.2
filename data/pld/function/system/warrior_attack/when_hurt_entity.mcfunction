#武器技-axe2
execute if score @s weapon_skill_axe2_5ticks matches 0.. run function pld:system/warrior_attack/weapon_skills/axe2/collateral_damage
scoreboard players reset @s player_cause_1damage

#如果玩家手中是axe4,怪物正在流血，追击
execute if entity @s[nbt={SelectedItem:{components:{custom_data:{id:"panling:axe4",act:1}}}}] unless score @s weapon_skill_axe4_5ticks matches 0.. if score @e[tag=warrior_tag,limit=1] blooded matches 1 run function pld:system/warrior_attack/weapon_skills/axe4/pursuit/main


#武器技-axe4
execute if score @s weapon_skill_axe4_5ticks matches 0.. run function pld:system/warrior_attack/weapon_skills/axe4/blood

#武器技-axe5
execute if score @s weapon_skill_axe5_5ticks matches 0.. run function pld:system/warrior_attack/weapon_skills/axe5/collateral_damage

#武器技-sword6
execute if entity @s[nbt={SelectedItem:{components:{custom_data:{id:"panling:sword6",act:1}}}}] run function pld:system/warrior_attack/weapon_skills/sword6/when_hurt_entity
