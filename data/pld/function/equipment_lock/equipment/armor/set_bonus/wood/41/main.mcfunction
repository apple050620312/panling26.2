#移动速度增幅
attribute @s movement_speed modifier add 12-1-4-0-0 "木四件套-弓箭手近战攻速" 0.2 multiply_base

#持续时间
scoreboard players set @s armor_set_bonus_1_4_tick 100

#进入冷却
scoreboard players set @s armor_set_bonus_cool_4_tick 100


execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.1.b1"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.1.b1"}