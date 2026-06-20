#恢复生命值 8点
effect give @s instant_health 1 1

#移速提升50%
attribute @s movement_speed modifier add panling:mod_12_2_4_0_0 0.5 add_multiplied_base

#抗性提升4 2秒
effect give @s resistance 2 3

#持续时间：2s
scoreboard players set @s armor_set_bonus_2_4_tick 40

#进入冷却 10s
scoreboard players set @s armor_set_bonus_cool_4_tick 200

execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.2.b1"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.2.b1"}
