#试炼冷却tick
scoreboard players remove @s[scores={test_cool=0..}] test_cool 1

#execute if score @s test_cool matches 0.. run scoreboard players remove @s test_cool 1

#试炼tick
execute if entity @s[x=1764,y=25,z=-168,distance=..25] run function pld:test/ren/fire/tick
execute if entity @s[x=2930,y=27,z=-197,distance=..25] run function pld:test/zhan/body/tick

#功勋时装附灵
function pld:system/honor_enchants/clear
execute if predicate pld:armor_check/honor_head run function pld:system/honor_enchants/check

#朱雀tick
execute if entity @s[x=2471,y=33,z=38,distance=..19] run function pld:system/altars/bird/birdtick_player


