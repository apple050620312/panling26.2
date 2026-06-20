#检查玩家生命值百分比
function pld:pre/hp_precent
execute if score @s hp_precent >= #system armor_set_bonus_3_2_hp run attribute @s generic.attack_damage modifier add 12-3-2-0-0 "火二件套属性" 0.15 multiply_base
execute unless score @s hp_precent >= #system armor_set_bonus_3_2_hp run attribute @s generic.attack_damage modifier remove 12-3-2-0-0
