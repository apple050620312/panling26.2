

execute if data block ~ ~ ~ Items[0].tag.PLattributes.final_add.atk_pt store result score @s equipment_atk_pt_final_add1 run data get block ~ ~ ~ Items[0].tag.PLattributes.final_add.atk_pt 10

#仅支持武器最终近战伤害
execute if data block ~ ~ ~ Items[0].tag.PLattributes.final_add.attack run function pld:equipment_lock/enable/attribute_enable/final_add/attack
