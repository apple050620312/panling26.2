#横扫冷却
scoreboard players remove @s[scores={sweep_cool=0..}] sweep_cool 1
#武器技冷却
function pld:system/weapon_skill_cool/5ticks_player
#状态
#武器技-axe2 追击架势
scoreboard players remove @s[scores={weapon_skill_axe2_5ticks=0..}] weapon_skill_axe2_5ticks 1
execute as @s[scores={weapon_skill_axe2_5ticks=0..}] unless entity @s[nbt={SelectedItem:{components:{custom_data:{id:"panling:axe2",act:1}}}}] run scoreboard players set @s weapon_skill_axe2_5ticks -1
    #粒子效果
execute as @s[scores={weapon_skill_axe2_5ticks=0..}] at @s run particle falling_lava ~ ~1 ~ 0.3 0.3 0.3 0 10 force

#武器技-axe4 割裂
scoreboard players remove @s[scores={weapon_skill_axe4_5ticks=0..}] weapon_skill_axe4_5ticks 1
execute as @s[scores={weapon_skill_axe4_5ticks=0..}] unless entity @s[nbt={SelectedItem:{components:{custom_data:{id:"panling:axe4",act:1}}}}] run scoreboard players set @s weapon_skill_axe4_5ticks -1

#武器技-sword4
function pld:system/warrior_attack/weapon_skills/sword4/check

#武器技-axe5
scoreboard players remove @s[scores={weapon_skill_axe5_5ticks=0..}] weapon_skill_axe5_5ticks 1
execute as @s[scores={weapon_skill_axe5_5ticks=0..}] unless entity @s[nbt={SelectedItem:{components:{custom_data:{id:"panling:axe5",act:1}}}}] run scoreboard players set @s weapon_skill_axe5_5ticks -1

#武器技-sword6
execute if score @s weapon_skill_sword6_main_5ticks matches 0.. run scoreboard players remove @s weapon_skill_sword6_main_5ticks 1
execute if score @s weapon_skill_sword6_main_cool_5ticks matches 0.. run scoreboard players remove @s weapon_skill_sword6_main_cool_5ticks 1
execute if score @s weapon_skill_sword6_positive_5ticks matches 0.. run scoreboard players remove @s weapon_skill_sword6_positive_5ticks 1
execute if score @s weapon_skill_sword6_positive_cool_5ticks matches 0.. run scoreboard players remove @s weapon_skill_sword6_positive_cool_5ticks 1
execute if score @s weapon_skill_sword6_main_pursuit_cool_5ticks matches 0.. run scoreboard players remove @s weapon_skill_sword6_main_pursuit_cool_5ticks 1
#延迟1tick的治疗效果
execute if score @s weapon_skill_sword6_positive_5ticks matches 149 run effect give @s instant_health 1 0 false
    #粒子效果
execute if score @s weapon_skill_sword6_positive_5ticks matches 0.. at @s run particle flame ~ ~ ~ 1.0 0.2 1.0 0 10 force

#清理时间结束后的效果
execute if score @s weapon_skill_sword6_positive_5ticks matches -1 run function pld:system/warrior_attack/weapon_skills/sword6/positive/clear