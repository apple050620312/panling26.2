#清理中介区域
function pld:equipment_lock/enable/attribute_enable/clear

execute if data block ~ ~ ~ Items[0].tag.PLattributes.base run function pld:equipment_lock/enable/attribute_enable/base/check
execute if data block ~ ~ ~ Items[0].tag.PLattributes.multiply_base run function pld:equipment_lock/enable/attribute_enable/multiply_base/check
execute if data block ~ ~ ~ Items[0].tag.PLattributes.multiply run function pld:equipment_lock/enable/attribute_enable/multiply/check
execute if data block ~ ~ ~ Items[0].tag.PLattributes.final_add run function pld:equipment_lock/enable/attribute_enable/final_add/check


#PLattributes
#base
#multiply_base
#multiply
#final_add
#
#protection_level
#projectile_protection_level
#
#speed_pc        #zf_cool
#atk_pt #atk_sp 
#zf_str #bow_str
#consume_rc

#最终攻击点数加成在此处理