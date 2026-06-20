#持续时间
scoreboard players set @s armor_set_bonus_1_4_tick 100

#进入冷却
scoreboard players set @s armor_set_bonus_cool_4_tick 200


execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.1.b2"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.1.b2"}