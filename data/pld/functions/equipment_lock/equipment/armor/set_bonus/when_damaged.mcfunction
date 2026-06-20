#受到伤害时
#木二件套
execute if entity @s[tag=wood_set_2] unless score @s armor_set_bonus_cool_1_2_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/wood/2/main

#金四件套-弓
execute if entity @s[tag=metal_set_4a,scores={job=1}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run scoreboard players set @s armor_set_bonus_cool_4_tick 200

#木四件套-战
execute if entity @s[tag=wood_set_4a,scores={job=0}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/wood/40/main

#木四件套-弓
execute if entity @s[tag=wood_set_4a,scores={job=1}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/wood/41/main

#水四件套-战
execute if entity @s[tag=water_set_4a,scores={job=0}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/water/40/main

#水四件套-弓
execute if entity @s[tag=water_set_4a,scores={job=1}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/water/41/check



#接口：受到伤害时
function #pld:equipment_lock/when_damaged


#重置进度接口
advancement revoke @s only pld:system/equipment_lock/set_bonus/when_damaged