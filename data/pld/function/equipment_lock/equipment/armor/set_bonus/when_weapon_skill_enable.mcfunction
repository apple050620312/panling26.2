#武器技激活时（包括阵法&丹药)

#金二件套
execute if entity @s[tag=metal_set_2] at @s as @a[distance=..5] run function pld:equipment_lock/equipment/armor/set_bonus/metal/2/main

#火四件套-弓箭手
execute if entity @s[tag=fire_set_4a,scores={job=1}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/fire/41/main

#金四件套-丹
execute if entity @s[tag=metal_set_4a,scores={job=2}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/metal/42/main

#重置木四件套效果
execute if entity @s[scores={job=2}] run scoreboard players set @s armor_set_bonus_1_4_tick -1
#木四件套-丹
execute if entity @s[tag=wood_set_4a,scores={job=2}] unless score @s armor_set_bonus_cool_4_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/wood/42/main


#水四件套-丹
execute if entity @s[tag=water_set_4a,scores={job=2}] unless score @s armor_set_bonus_cool_4_tick matches 1.. at @s run function pld:equipment_lock/equipment/armor/set_bonus/water/42/main
#火四件套-丹
execute if entity @s[tag=fire_set_4a,scores={job=2}] unless score @s armor_set_bonus_cool_4_tick matches 1.. at @s run function pld:equipment_lock/equipment/armor/set_bonus/fire/42/main



#接口：武器技激活时
function #pld:equipment_lock/when_weapon_skill_enable
