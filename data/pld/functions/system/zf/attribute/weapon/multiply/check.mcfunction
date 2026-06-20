scoreboard players reset @s equipment_atk_pt_multiply
#scoreboard players reset @s equipment_speed_pc_multiply


execute if data storage pld:system Temp_zf_weapon.tag.PLattributes.multiply.atk_pt store result score @s equipment_atk_pt_multiply run data get storage pld:system Temp_zf_weapon.tag.PLattributes.multiply.atk_pt
#execute if data storage pld:system Temp.tag.PLattributes.multiply.speed_pc run say 1