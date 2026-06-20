scoreboard players reset @s equipment_atk_pt_base1
scoreboard players reset @s equipment_atk_pt_multiply_base
scoreboard players reset @s equipment_atk_pt_multiply
scoreboard players reset @s equipment_atk_pt_final_add1 
scoreboard players reset @s equipment_speed_pc_multiply_base
scoreboard players reset @s equipment_consume_reduce_multiply_base

data modify storage pld:system Temp_zf_weapon set value {}
execute if score @s zf_hold_ldl matches ..0 run data modify storage pld:system Temp_zf_weapon set from entity @s SelectedItem
execute if score @s zf_hold_ldl matches 0.. run data modify storage pld:system Temp_zf_weapon set from entity @s Inventory[{Slot:-106b}]

#武器数据
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.base run function pld:system/zf/attribute/weapon/base/check
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base run function pld:system/zf/attribute/weapon/multiply_base/check
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply run function pld:system/zf/attribute/weapon/multiply/check
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.final_add run function pld:system/zf/attribute/weapon/final_add/check

#强化数据更新
execute if data storage pld:system Temp_zf_weapon.tag.enhance_lvl run function pld:system/zf/attribute/weapon/enhance/check

#阵法强度-基础
#equipment_atk_pt_base1

#阵法强度-multiply_base
#equipment_atk_pt_multiply_base

#阵法强度-multiply
#equipment_atk_pt_multiply

#阵法强度-最终加成
#equipment_atk_pt_final_add1

#冷却缩减-multiply_base
#equipment_speed_pc_multiply_base

#阵法不消耗率-multiply_base             consume_rc
#equipment_consume_reduce_multiply_base

