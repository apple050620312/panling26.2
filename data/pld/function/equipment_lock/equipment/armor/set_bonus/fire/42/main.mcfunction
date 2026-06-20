effect give @a[distance=..5] instant_health 1 0

#冷却
scoreboard players set @s armor_set_bonus_cool_4_tick 40

#信息
execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.3.b2"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.3.b2"}
