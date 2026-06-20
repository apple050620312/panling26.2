#将temp2中的项放入temp末端
data modify storage pld:system blooding_temp append from storage pld:system blooding_temp2[0]
data remove storage pld:system blooding_temp2[0]

execute if data storage pld:system blooding_temp2[0] run function pld:system/warrior_attack/weapon_skills/axe4/loop2 