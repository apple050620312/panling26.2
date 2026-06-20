#造成伤害时

#金四件套-战士
execute if entity @s[tag=metal_set_4a,scores={job=0}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/metal/40/main

#火四件套-战士
execute if entity @s[tag=fire_set_4a,scores={job=0}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/fire/40/main


#接口：造成伤害时
function #pld:equipment_lock/when_cause_damage

#重置进度接口
advancement revoke @s only pld:system/equipment_lock/set_bonus/when_cause_damage