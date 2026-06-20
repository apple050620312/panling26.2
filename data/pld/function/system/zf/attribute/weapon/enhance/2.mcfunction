#获取enhance2_id 并激活
execute store result score #system temp run data get storage pld:system Temp_zf_weapon.tag.enhance2_id
#激活本屬性
function pld:equipment_lock/enable/enhance/id_check

