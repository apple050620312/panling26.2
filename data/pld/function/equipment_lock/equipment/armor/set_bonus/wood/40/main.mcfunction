#近战伤害和抗击退增幅
attribute @s attack_damage modifier add 12-1-4-0-0 "木四件套-战士近战伤害" 0.2 multiply_base
attribute @s knockback_resistance modifier add 12-1-4-0-0 "木四件套-战士抗击退" 0.2 multiply_base

#持续时间
scoreboard players set @s armor_set_bonus_1_4_tick 100

#进入冷却
scoreboard players set @s armor_set_bonus_cool_4_tick 100

execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.1.b0"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.1.b0"}