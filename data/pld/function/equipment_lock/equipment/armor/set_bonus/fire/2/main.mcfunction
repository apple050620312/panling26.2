#检查玩家生命值百分比
function pld:pre/hp_precent
execute if score @s hp_precent >= #system armor_set_bonus_3_2_hp run attribute @s attack_damage modifier add panling:mod_12_3_2_0_0 0.15 add_multiplied_base
execute unless score @s hp_precent >= #system armor_set_bonus_3_2_hp run attribute @s attack_damage modifier remove panling:mod_12_3_2_0_0
