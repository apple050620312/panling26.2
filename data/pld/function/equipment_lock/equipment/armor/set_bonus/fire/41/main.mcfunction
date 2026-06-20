#重置记分板
scoreboard players set @s armor_set_bonus_3_1_walk 0
scoreboard players set @s armor_set_bonus_3_1_sprint 0
scoreboard players set @s armor_set_bonus_3_1_crouch 0

#移速提升20%
attribute @s movement_speed modifier add panling:mod_12_3_4_0_0 0.2 add_multiplied_base

#持续时间 10秒
scoreboard players set @s armor_set_bonus_3_4_tick 400

#进入冷却：20秒
scoreboard players set @s armor_set_bonus_cool_4_tick 400

#信息
execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.3.b1"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.3.b1"}
