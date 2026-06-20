#最大生命值提升20%
attribute @s generic.max_health modifier add 12-2-4-0-0 "水四件套战士最大生命值" 0.2 multiply_base

#抗性提升2 15秒
effect give @s resistance 15 1

#持续时间：15s
scoreboard players set @s armor_set_bonus_2_4_tick 300


#进入冷却 10s
scoreboard players set @s armor_set_bonus_cool_4_tick 200


execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.2.b0"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.2.b0"}
