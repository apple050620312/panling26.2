

execute if data block ~ ~ ~ Items[0].tag.PLattributes.base.protection_level run function pld:equipment_lock/enable/attribute_enable/base/protection_level
execute if data block ~ ~ ~ Items[0].tag.PLattributes.base.projectile_protection_level run function pld:equipment_lock/enable/attribute_enable/base/projectile_protection_level

execute if data block ~ ~ ~ Items[0].tag.PLattributes.base.atk_pt store result score @s equipment_atk_pt_base1 run data get block ~ ~ ~ Items[0].tag.PLattributes.base.atk_pt 10
execute if data block ~ ~ ~ Items[0].tag.PLattributes.base.atk_sp store result score @s equipment_atk_sp_base1 run data get block ~ ~ ~ Items[0].tag.PLattributes.base.atk_sp 10
