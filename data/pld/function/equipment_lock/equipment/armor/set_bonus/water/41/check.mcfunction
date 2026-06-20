#最大生命值百分比
function pld:pre/hp_precent

execute if score @s hp_precent <= #system armor_set_bonus_2_4_1_hp run function pld:equipment_lock/equipment/armor/set_bonus/water/41/main
 