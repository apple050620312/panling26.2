#金二件套
#metal_set_2_lvl1
#metal_set_2_lvl2

#叠层
execute unless entity @s[tag=metal_set_2_lvl2] if entity @s[tag=metal_set_2_lvl1] run tag @s add metal_set_2_lvl2
execute unless entity @s[tag=metal_set_2_lvl1] run tag @s add metal_set_2_lvl1

execute if score @s[tag=metal_set_2_lvl1] job matches 0 run attribute @s attack_damage modifier add panling:mod_12_0_2_0_0 0.08 add_multiplied_base
execute if score @s[tag=metal_set_2_lvl2] job matches 0 run attribute @s attack_damage modifier add panling:mod_12_0_2_0_1 0.08 add_multiplied_base 


#重置持续时间
scoreboard players set @s armor_set_bonus_0_2_tick 200


execute unless score @s info_pos_armor_skill matches 1 run tellraw @s {"translate":"pl.info.armorskill.0.a"}
execute if score @s info_pos_armor_skill matches 1 run title @s actionbar {"translate":"pl.info.armorskill.0.a"}
