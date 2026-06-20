#金四件套战士效果
#移速+20%
attribute @s movement_speed modifier add 12-0-4-0-0 "金四件套效果" 0.2 multiply_base
#重置速度时间
scoreboard players set @s armor_set_bonus_0_4_tick 100



#武器技能冷却时间降低1秒
scoreboard players remove @s weapon_skill_cool_5ticks 4
execute if score @s weapon_skill_cool_5ticks matches ..-1 run scoreboard players set @s weapon_skill_cool_5ticks 0

#进入冷却：0.7s
scoreboard players set @s armor_set_bonus_cool_4_tick 14

execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.0.b0"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.0.b0"}
