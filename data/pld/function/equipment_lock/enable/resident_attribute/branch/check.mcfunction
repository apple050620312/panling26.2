
#职业分支常驻属性
execute unless score @s weapon_rare matches 6 unless score @s weapon_rare matches 1 as @s[scores={job=0,weapon_branch=0}] run function pld:equipment_lock/enable/resident_attribute/branch/00
execute unless score @s weapon_rare matches 6 as @s[scores={job=0,weapon_branch=1}] run function pld:equipment_lock/enable/resident_attribute/branch/01
execute unless score @s weapon_rare matches 6 unless score @s weapon_rare matches 1 as @s[scores={job=1,weapon_branch=0}] run function pld:equipment_lock/enable/resident_attribute/branch/10
execute unless score @s weapon_rare matches 6 as @s[scores={job=1,weapon_branch=1}] run function pld:equipment_lock/enable/resident_attribute/branch/11

execute if score @s weapon_rare matches 6 as @s[scores={job=0,weapon_branch=0}] run function pld:equipment_lock/enable/resident_attribute/branch/rare6/00
execute if score @s weapon_rare matches 6 as @s[scores={job=1,weapon_branch=0}] run function pld:equipment_lock/enable/resident_attribute/branch/rare6/10
