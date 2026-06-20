execute if entity @s[distance=..1.9] unless block ~ ~ ~ air run function pld:system/warrior_attack/weapon_skills/sword3/action
execute unless entity @s[distance=..1.9] run function pld:system/warrior_attack/weapon_skills/sword3/action2
execute if entity @s[distance=..1.9] if block ~ ~ ~ air positioned ^ ^ ^0.01 run function pld:system/warrior_attack/weapon_skills/sword3/get_positon

