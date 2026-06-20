#近战伤害和抗击退增幅
attribute @s minecraft:generic.attack_damage modifier add panling:uuid_12_1_4_0_0 0.2 add_multiplied_base
attribute @s minecraft:generic.knockback_resistance modifier add panling:uuid_12_1_4_0_0 0.2 add_multiplied_base

#持续时间
scoreboard players set @s armor_set_bonus_1_4_tick 100

#进入冷却
scoreboard players set @s armor_set_bonus_cool_4_tick 100

execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.1.b0"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.1.b0"}