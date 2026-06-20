scoreboard players reset @s equipment_atk_pt_multiply_base
scoreboard players reset @s equipment_speed_pc_multiply_base
scoreboard players reset @s equipment_consume_reduce_multiply_base

execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.atk_pt store result score @s equipment_atk_pt_multiply_base run data get storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.atk_pt
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.speed_pc store result score @s equipment_speed_pc_multiply_base run data get storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.speed_pc
execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.consume_rc store result score @s equipment_consume_reduce_multiply_base run data get storage pld:system Temp_zf_weapon.tag.PLattributes.multiply_base.consume_rc
